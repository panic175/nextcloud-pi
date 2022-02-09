FROM nextcloud:latest

RUN apt update

# Install svg extension
RUN apt install libmagickcore-6.q16-6-extra -y

# Install clamav antivirus
RUN apt install clamav clamav-daemon -y

# Upgrade dependencies
RUN apt upgrade -y