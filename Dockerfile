FROM nextcloud:latest

RUN apt update

# Install svg extension
RUN apt install libmagickcore-6.q16-6-extra -y

# Install clamav antivirus
RUN apt install clamav clamav-daemon -y
RUN mkdir /var/run/clamav -p

# Install smbclient
RUN apt install libsmbclient-dev git -y && pecl install smbclient && docker-php-ext-enable smbclient

# Upgrade dependencies
RUN apt upgrade -y