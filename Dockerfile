FROM microsoft/mssql-server-linux:ctp2-1

WORKDIR /tmp

# Sqlserver VM
WORKDIR /sqlserver

COPY entrypoint.sh /
RUN chmod u+x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
EXPOSE 1433
