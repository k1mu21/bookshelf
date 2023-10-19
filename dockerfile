FROM Mysql:8.1
COPY resource/bookshelf.sql /docker-entrypoint-initdb.d/
EXPOSE 3306