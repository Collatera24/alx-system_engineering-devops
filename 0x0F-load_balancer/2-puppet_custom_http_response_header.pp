# creating a custom HTTP header response, but with Puppet.

exec {'nginx':
provider => shell,
command => 'sudo apt-get -y update; sudo apt-get -y install nginx; header="server_name_;\nadd_header X-Served-By \"$(hostname)\";"; sed -i "s/server_name _;/$header/" /etc/nginx/sites-enabled/default ; sudo service nginx start',
}

