# pull docker image from docker hub for local oracle db
# docker pull wazbekker/oracledatabase:12.2.0.1-se2-extended

# start container using oracle docker image
# docker run --name ora122 -p 1521:1521 -p 5500:5500 -v oradata:/opt/oracle/oradata wazbekker/oracledatabase:12.2.0.1-se2-extended

# create mtp user with correct permissions
# sqlplus

# create gcc user with correct permissions
# sqlplus