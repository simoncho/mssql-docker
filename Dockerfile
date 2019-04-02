FROM mcr.microsoft.com/mssql/server:2017-latest-ubuntu

ENV ACCEPT_EULA="Y"
ENV SA_PASSWORD="ThisIsSecret123"
ENV MSSQL_PID="Express"

#Note that EXPOSE does not expose the port itself -- only -p will do that. To expose the container's port on your localhost's port:
EXPOSE 1433
CMD [ "/opt/mssql/bin/sqlservr" ]


#docker run -p 127.0.0.1:$HOSTPORT:$CONTAINERPORT --name CONTAINER -t someimage

#docker build . -t mssql-docker
#docker run -p 2433:1433 mssql-docker
