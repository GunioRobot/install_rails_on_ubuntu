apt-get -y install postgresql-8.3 postgresql-client-8.3

su postgres -c psql postgres
ALTER USER postgres WITH PASSWORD '123456';
\q
exit

/etc/init.d/postgresql-8.3 restart
