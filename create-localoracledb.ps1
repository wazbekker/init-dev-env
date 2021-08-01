# pull docker image from docker hub for local oracle db
&docker pull wazbekker/oracledatabase:12.2.0.1-se2-extended

# start container using oracle docker image
&docker run -d --name ora122 -p 1521:1521 -p 5500:5500 -v oradata:/opt/oracle/oradata wazbekker/oracledatabase:12.2.0.1-se2-extended

$script = "scripts-to-exec.pdc"

# login to local oracle db as sysdba and run the create-user.sql script
&sqlplus sys/Pass123!@local_sys as sysdba @$script

# &sqlplus mtp/mtp@local
# $sqlplus gccmod/gccmod@local
