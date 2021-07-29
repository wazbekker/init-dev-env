# pull docker image from docker hub for local oracle db
docker pull wazbekker/oracledatabase:12.2.0.1-se2-extended

# start container using oracle docker image
docker run --name ora122 -p 1521:1521 -p 5500:5500 -v oradata:/opt/oracle/oradata wazbekker/oracledatabase:12.2.0.1-se2-extended

# create mtp user with correct permissions
# sqlplus

# create gcc user with correct permissions
# sqlplus



#$username = 'bets'
#$password = 'bets'
#$db = '/BETS'
#$pdcFileName = 'executeScripts.pdc'
#$sqlOutputFileName = 'sql-output.txt'

#$scriptfolder = "D:\PowerShellScripts"

# $sqlOutPutFile = $scriptfolder + "\" + $sqlOutputFileName
# $executionScript = $scriptfolder + "\" + $pdcFileName

# &sqlplus -s $username/$password@$db @$executionScript | out-file $sqlOutPutFile

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
