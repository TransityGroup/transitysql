set -e
# set noninteractive installation
export DEBIAN_FRONTEND=noninteractive
#install tzdata package
apt install -y postgresql python-psycopg2 libpq-dev
# set your timezone
ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
