sudo apt-get install -y sqlite3 libsqlite3-dev
wget https://15445.courses.cs.cmu.edu/fall2019/files/imdb-cmudb2019.db.gz
gunzip imdb-cmudb2019.db.gz
sqlite3 imdb-cmudb2019.db < index.sql
