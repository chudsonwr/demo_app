#/usr/bin/bash
#DOCKER
apt-get update
apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

apt-get update
apt-get install -y docker-ce
#docker run hello-world




#RAILS
apt-get install -y build-essential patch ruby-dev zlib1g-dev liblzma-dev sqlite3 libsqlite3-dev

# for postgres
apt-get install -y libpq-dev

# for nokogiri
apt-get install -y libxml2-dev libxslt1-dev

# for capybara-webkit
apt-get install -y libqtwebkit4 libqt4-dev xvfb


#docker build -t toy-app:1.0 .
#docker run -p 3000:3000 -i -t toy-app:1.0 bin/rails server -p 3000 -b 0.0.0.0