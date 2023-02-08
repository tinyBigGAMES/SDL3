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
Email  : mailto:support@tinybiggames.com

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

unit uHelloWorld;

interface

procedure RunExample;

implementation

uses
  SysUtils,
  SDL3;

const
  WINDOW_WIDTH = 1920 div 2;
  WINDOW_HEIGHT = 1080 div 2;

procedure RunExample;
var
  win: PSDL_Window;
  ren: PSDL_Renderer;
  evt: SDL_Event;
  quit: Boolean;
  rect: SDL_FRect;
begin
  // init
  SDL_Init(SDL_INIT_EVERYTHING);

  win := SDL_CreateWindow('Hello World, welcome to SDL3 for Pascal!', SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, WINDOW_WIDTH, WINDOW_HEIGHT, 0);
  ren := SDL_CreateRenderer(win, nil, Ord(SDL_RENDERER_ACCELERATED));
  SDL_SetRenderLogicalPresentation(ren, WINDOW_WIDTH, WINDOW_HEIGHT, SDL_LOGICAL_PRESENTATION_LETTERBOX, SDL_SCALEMODE_BEST);

  // game loop
  quit := False;
  while not quit do
  begin
    SDL_PollEvent(@evt);
    case evt.type_ of
      // terminate game loop
      Ord(SDL_EVENT_QUIT):
        begin
          quit := True;
        end;
    end;

    // set clear color
    SDL_SetRenderDrawColor(ren, 30, 31, 30, 1);

    // clear frame buffer
    SDL_RenderClear(ren);

    //
    // do your rendering here
    //
    rect.x := 50;
    rect.y := 50;
    rect.w := 150;
    rect.h := 150;
    SDL_SetRenderDrawColor(ren, $FF, $A5, $00, $FF);
    SDL_RenderFillRect(ren, @rect);

    // show the frame buffer
    SDL_RenderPresent(ren);

  end;

  // shutdown
  SDL_DestroyRenderer(ren);
  SDL_DestroyWindow(win);
  SDL_Quit;
end;

end.
