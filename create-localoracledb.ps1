# pull docker image from docker hub for local oracle db
docker pull wazbekker/oracledatabase:12.2.0.1-se2-extended

# start container using oracle docker image
docker run --name ora122 -p 1521:1521 -p 5500:5500 -v oradata:/opt/oracle/oradata wazbekker/oracledatabase:12.2.0.1-se2-extended

# create mtp user with correct permissions
# sqlplus

# create gcc user with correct permissions
# sqlplus

param(
[string]$username,
[string]$password,
[string]$db, 
[string]$scriptfolder,
[string]$pdcFileName,
[string]$sqlOutputFileName 
)

#$username = 'bets'
#$password = 'bets'
#$db = '10.1.233.104/BETS'
#$pdcFileName = 'executeScripts.pdc'
#$sqlOutputFileName = 'sql-output.txt'

#$scriptfolder = "D:\PowerShellScripts"

$sqlOutPutFile = $scriptfolder + "\" + $sqlOutputFileName
$executionScript = $scriptfolder + "\" + $pdcFileName

&sqlplus -s $username/$password@$db @$executionScript | out-file $sqlOutPutFile

#$sqlScripts = Get-ChildItem -Path $scriptfolder -Filter *.pdc | sort-object -desc


#for ($i=0; $i -lt $sqlScripts.Count; $i++) {
    #Write-Host $sqlScripts[$i].Name

    #$sqlFileName = $sqlScripts[$i].Name #.split(".")[0] 

   # Write-Host $sqlFileName
         
    #&sqlplus -s $username/$password@$db @$sqlFileName | out-file $sqlOutPutFile
#}

#DISCO
#EXIT

#"select count(*) from AB_TITLE;" | &sqlplus $username/$password@$db 

##$Dir = get-childitem $scriptfolder 
#$List = $Dir | where {$_.extension -eq '.sql'} 
#$List | format-table Name 

#foreach($f in $List)
#{
#    Write-Host $f
#}

#foreach ($sqlScript in Get-ChildItem -path $scriptfolder -Filter *.sql | sort-object -desc ) 
#{ 
#    Write-Host $sqlScript.FullName    
#}


#$scriptfolder

#DISCO
#EXIT

#Param{
#[string]$username,
#[string]$password,
#[string]$db, 
#[string]$scriptfolder 
#}

#$username = 'bets'
#$password = 'bets'
#$db = 'xe'

#$scriptfolder = "C:\Users\bekkerw\Source\Repos\BPC\Ets.Database\Scripts"

#$sqlScripts = Get-ChildItem -Path $scriptfolder #-Filter *.sql |

#for ($i=0; $i -lt $sqlScripts.Count; $i++) {
#    Write-Host $sqlScripts[$i].FullName
#}

#&sqlplus $username/$password@$db $scriptfolder

#DISCO
#EXIT
