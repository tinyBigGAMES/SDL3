<?php
/******************************************************************************
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
-------------------------------------------------------------------------------
Based on:
  https://github.com/telecube/mysql-api
  
******************************************************************************/

// this definition can be checked in the required scripts to ensure they
// aren't called directly.
define('MAIN_INCLUDED', 1);

// modifiy this to point to your config script that should be outside of your
// visible www folder
$config_path = "";

// --- Config ---------------------------------------------------------------
class Config
{
	// master detail
	private $master_db_host;
	private $master_db_port;
	private $master_db_user;
	private $master_db_pass;
	
	// apikey
	private $apikey;

	public function __construct(){
		
    //load config file
    include($config_path."/config.php")

		// master detail
		$this->master_db_host 	= $master_db_host; 
		$this->master_db_port 	= $master_db_port; 
		$this->master_db_user 	= $master_db_user; 
		$this->master_db_pass 	= $master_db_pass; 

		// apikey
		$this->apikey 			    = $apikey;
    }       

	public function get($varname){
		return isset($this->$varname) ? $this->$varname : false;
	}
}

// --- Common ---------------------------------------------------------------
class Common
{
	public static function requested_keyspace(){
		if(isset($_REQUEST['keyspace']) && !empty($_REQUEST['keyspace'])){
			return $_REQUEST['keyspace'];
		}else{
			header("HTTP/1.1 400 Bad Request");
			echo json_encode(array("query_status"=>"ERROR","response"=>"You must set a keyspace!"));
			exit();
		}
	}

	public static function requested_query(){
		if(isset($_REQUEST['query']) && !empty($_REQUEST['query'])){
			return $_REQUEST['query'];
		}else{
			header("HTTP/1.1 400 Bad Request");
			echo json_encode(array("query_status"=>"ERROR","response"=>"You must set a query!"));
			exit();
		}
	}
}

//--- Auth -----------------------------------------------------------------
class Auth
{
	public static function api_check_key()
  {
		global $Config;

		// get the apikey from config
		$apikey = $Config->get("apikey");

		// check the api key
		if(!isset($_REQUEST["apikey"]) || $_REQUEST["apikey"] != $apikey){
			header('HTTP/1.0 401 Unauthorized');
			echo json_encode(array("query_status"=>"ERROR","response"=>"Unauthorized request."));
			exit();
		}
	}
}

//--- Db ----------------------------------------------------------------------
class Db
{
	public static function pdo_query($q,$data=array(),$link){
		
		$rq_type = substr(strtolower($q), 0, 6);

	    try{
			$res = array();
	    	
	    	$rec = $link->prepare($q);  
	    	
	    	if($rq_type == "select"){
	    		$rec->execute($data); 
				$rec->setFetchMode(\PDO::FETCH_ASSOC);  
				while($rs = $rec->fetch()){
					$res[] = $rs;
				}
	    	}else{
	    		$res = $rec->execute($data); 
	    	}

			$rec->closeCursor();
			return $res;

	    }catch(\PDOException $ex){
			return $ex->getMessage();
	    } 
	}
}

// --- Main -----------------------------------------------------------------
$Config = new Config;
$Common = new Common;
$Auth 	= new Auth;
$Db     = new Db;

// check the apikey is set and valid
$Auth->api_check_key();

$query_start = microtime(true);

// get the keyspace/database
$keyspace 		= $Common->requested_keyspace();
// get the query
$query 			= $Common->requested_query();
$query 			= trim($query);
// get the data
$data       = [];

// pdo db connection
try{
	$dbPDO = new PDO('mysql:dbname='.$Common->requested_keyspace().';host='.$Config->get("master_db_host").';port='.$Config->get("master_db_port"), $Config->get("master_db_user"), $Config->get("master_db_pass"));
} catch(PDOException $ex){
	exit( 'Connection failed: ' . $ex->getMessage() );
}
$dbPDO->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );

// test the query type
$query_type = substr(strtolower($query), 0, 6);
$response = $Db->pdo_query($query,$data,$dbPDO,$query_type);

$query_status = "OK";

$query_end = microtime(true);
$query_time = $query_end - $query_start;

$response_length = strlen(json_encode($response));

// echo the response
echo json_encode(array("query_status"=>$query_status,"query_time"=>$query_time,"response_length"=>$response_length,"response"=>$response));

?>