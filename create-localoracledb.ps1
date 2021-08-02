# pull docker image from docker hub for local oracle db
&docker pull wazbekker/oracledatabase:12.2.0.1-se2-extended

# start container using oracle docker image
&docker run -d --name ora122 -p 1521:1521 -p 5500:5500 -v oradata:/opt/oracle/oradata wazbekker/oracledatabase:12.2.0.1-se2-extended

# wait until container is up and running before executing the next steps
$startTimeout = [DateTime]::Now.AddSeconds(90)
$timeoutHit = $true

while ((Get-Date) -le $startTimeout)
{
    Start-Sleep -Seconds 10

    $matches = docker ps | Select-String -Pattern 'wazbekker/oracledatabase' -AllMatches
    
    if($matches.Matches.Length -gt 0)
    {
        $timeoutHit = $false

        break
    }
}

if ($timeoutHit -eq $true)
{
    throw "Timeout hit waiting for docker container to startup"
}

$script = "scripts-to-exec.pdc"

# login to local oracle db as sysdba and run the create-user.sql script
&sqlplus sys/Pass123!@local_sys as sysdba @$script

# &sqlplus mtp/mtp@local
# $sqlplus gccmod/gccmod@local
