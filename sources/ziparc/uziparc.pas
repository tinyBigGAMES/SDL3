(****************************************************************************

    .:-======-:.  :---------::.       .----:                .
  -+************= +*************=:    -****+                 .:.
 +****+-...::=+*= +****+---=+*****+.  -****+                   .:-
.*****:        .: +****=      =*****: -****+                    ..-.
 ******+=-::.     +****=       =*****.-*****                     .-*.
 :*##########*+-  +####=       .#####:-####*                      .-=
   :=+*#########* *####+       :#####:-####*                       :=:
        .:-+#####:*####+      .*####+ -####*                      .+*-
-#=:       .#####:*####+    :=#####+. -#####                       ++:
-%%%%#*+++*%%%%%= *%%%%###%%%%%%%#-   =%%%%#########+           .:+++.
:+*#%%%%%%%%#*=.  *%%%%%%%%##*+=:     =%%%%%%%%%%%%%+           -*#+-
    ..:::::.      .:.    .  ...          ..  :                 :+*+:.
                  -=+==+=++.=-======+=+=+===:+:+====-       :+*++-..
                       .                                  .-++=-...
                                                       =#++=-:...
                                                 .--:===-::...
                   . .                .   ..=::----:::.....
                         ....:::-:::::-::::::........

     Simple DirectMedia Layer for Pascal (Win64)

Copyright © 2022-present tinyBigGAMES™ LLC
All Rights Reserved.

Website: https://tinybiggames.com
Email  : support@tinybiggames.com

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. The origin of this software must not be misrepresented; you must not
   claim that you wrote the original software. If you use this software in
   a product, an acknowledgment in the product documentation would be
   appreciated but is not required.

2. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.

3. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in
   the documentation and/or other materials provided with the
   distribution.

4. Neither the name of the copyright holder nor the names of its
   contributors may be used to endorse or promote products derived
   from this software without specific prior written permission.

5. All video, audio, graphics and other content accessed through the
   software in this distro is the property of the applicable content owner
   and may be protected by applicable copyright law. This License gives
   Customer no rights to such content, and Company disclaims any liability
   for misuse of content.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.
*****************************************************************************)

unit uziparc;

interface

procedure RunZipArc;

implementation

uses
  System.Types,
  System.SysUtils,
  System.IOUtils,
  System.Classes,
  WinApi.Windows,
  SDL3;

const
  ZIPARC_VERSION = '1.0';

  LF = #10;
  CR = #13;
  CRLF = CR+LF;

procedure RunZipArc;
var
  LCodePage: Cardinal;

  procedure Print(const aMsg: string; const aArgs: array of const);
  begin
    Write(Format(aMsg, aArgs));
  end;

  procedure PrintLn(const aMsg: string; const aArgs: array of const);
  begin
    WriteLn(Format(aMsg, aArgs));
  end;

  procedure ShowHeader;
  begin
    PrintLn('', []);
    PrintLn('ZipArc™ Archive Utilty v%s', [ZIPARC_VERSION]);
    PrintLn('Copyright © 2022-present tinyBigGAMES™ LLC', []);
    PrintLn('All Rights Reserved.', []);
  end;

  procedure ShowUsage;
  begin
    PrintLn('', []);
    PrintLn('Usage: ZipArc [password] archivename[.zip] directoryname', []);
    PrintLn('  password      - make archive password protected', []);
    PrintLn('  archivename   - compressed archive name', []);
    PrintLn('  directoryname - directory to archive', []);
  end;

  procedure OnProgress(const aFilename: string; aProgress: Integer);
  begin
    Print(CR+'Adding %s(%d%s)...', [aFilename, aProgress, '%']);
    if aProgress = 100 then WriteLn;
  end;

  function GetCRC32(aStream: TStream): Cardinal;
  var
    LBytesRead: Integer;
    LBuffer: array of Byte;
  begin
    SetLength(LBuffer, 65521);

    Result := crc32(0, nil, 0);
    repeat
      LBytesRead := AStream.Read(LBuffer[0], Length(LBuffer));
      Result := crc32(Result, @LBuffer[0], LBytesRead);
    until LBytesRead = 0;

    LBuffer := nil;
  end;

  function Build(const aPassword: string; const aFilename: string; const aDirectory: string): Boolean;
  var
    LMarshaller: array[0..1] of TMarshaller;
    LFileList: TStringDynArray;
    LFilename: string;
    LZipFile: zipFile;
    LZipFileInfo: zip_fileinfo;
    LFile: TStream;
    LCrc: Cardinal;
    LBytesRead: Integer;
    LBuffer: array of Byte;
    LFileSize: Int64;
    LProgress: Single;
  begin
    Result := False;

    // check if directory exists
    if not TDirectory.Exists(aDirectory) then Exit;

    // init variabls
    SetLength(LBuffer, 1024*4);
    FillChar(LZipFileInfo, SizeOf(LZipFileInfo), 0);

    // scan folder and build file list
    LFileList := TDirectory.GetFiles(aDirectory, '*', TSearchOption.soAllDirectories);

    // create a zip file
    LZipFile := zipOpen(LMarshaller[0].AsUtf8(aFilename).ToPointer, APPEND_STATUS_CREATE);

    // process zip file
    if LZipFile <> nil then
    begin
      // loop through all files in list
      for LFilename in LFileList do
      begin
        // open file
        LFile := TFile.OpenRead(LFilename);

        // get file size
        LFileSize := LFile.Size;

        // get file crc
        LCrc := GetCRC32(LFile);

        // open new file in zip
        if ZipOpenNewFileInZip3(LZipFile, LMarshaller[0].AsUtf8(LFilename).ToPointer,
          @LZipFileInfo, nil, 0, nil, 0, '',  Z_DEFLATED, 9, 0, 15, 9,
          Z_DEFAULT_STRATEGY, LMarshaller[1].AsUtf8(aPassword).ToPointer, LCrc) = Z_OK then
        begin
          // make sure we start at star of stream
          LFile.Position := 0;

          // read through file
          repeat
            // read in a buffer length of file
            LBytesRead := LFile.Read(LBuffer[0], Length(LBuffer));

            // write buffer out to zip file
            zipWriteInFileInZip(LZipFile, @LBuffer[0], LBytesRead);

            // calc file progress percentage
            LProgress := 100.0 * (LFile.Position / LFileSize);

            // show progress
            OnProgress(LFilename, Round(LProgress));

          until LBytesRead = 0;

          // close file in zip
          zipCloseFileInZip(LZipFile);

          // free file stream
          FreeAndNil(LFile);
        end;
      end;

      // close zip file
      zipClose(LZipFile, '');
    end;

    // return true if new zip file exits
    Result := TFile.Exists(aFilename);

  end;

  procedure Run;
  var
    LPassword: string;
    LArchiveFilename: string;
    LDirectoryName: string;
  begin

    // init local vars
    LPassword := '';
    LArchiveFilename := '';
    LDirectoryName := '';

    // display header
    ShowHeader;

    // check for password, archive, directory
    if ParamCount = 3 then
      begin
        LPassword := ParamStr(1);
        LArchiveFilename := ParamStr(2);
        LDirectoryName := ParamStr(3);
        LPassword := LPassword.DeQuotedString;
        LArchiveFilename := LArchiveFilename.DeQuotedString;
        LDirectoryName := LDirectoryName.DeQuotedString;
      end
    // check for archive directory
    else if ParamCount = 2 then
      begin
        LArchiveFilename := ParamStr(1);
        LDirectoryName := ParamStr(2);
        LArchiveFilename := LArchiveFilename.DeQuotedString;
        LDirectoryName := LDirectoryName.DeQuotedString;
      end
    else
      begin
        // show usage
        ShowUsage;
        Exit;
      end;

    // init archive filename
    LArchiveFilename :=  TPath.ChangeExtension(LArchiveFilename, 'zip');

    // check if directory exist
    if not TDirectory.Exists(LDirectoryName) then
      begin
        WriteLn;
        WriteLn('Directory was not found: ', LDirectoryName);
        ShowUsage;
        Exit;
      end;

    // display params
    WriteLn;
    if LPassword = '' then
      WriteLn('Password : NONE')
    else
      WriteLn('Password : ', LPassword);
    WriteLn('Archive  : ', LArchiveFilename);
    WriteLn('Directory: ', LDirectoryName);
    WriteLn;

    // try to build archive
    if Build(LPassword, LArchiveFilename, LDirectoryName) then
      begin
        WriteLn(CRLF+'Success!')
      end
    else
      begin
        WriteLn(CRLF+'Failed!');
      end;
  end;

begin
  // save current console codepage
  LCodePage := GetConsoleOutputCP;

  // init console codepage to UTF8
  SetConsoleOutputCP(WinApi.Windows.CP_UTF8);

  // run
  Run;

  // restore console codepage
  SetConsoleOutputCP(LCodePage);
end;

end.
