FROM mcr.microsoft.com/mssql/server:2017-latest-ubuntu as build

ENV ACCEPT_EULA="Y"
ENV SA_PASSWORD="ThisIsSecret123"
ENV MSSQL_PID="Express"
WORKDIR /var/opt/mssql
