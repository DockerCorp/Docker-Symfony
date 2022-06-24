#!/bin/sh
echo "######################"
echo "## Package versions ##"
echo "######################"
echo ""
php      -v | grep -m 1 -oE "[0-9]+\.[0-9]+\.[0-9]+" | echo "PHP         : $(cat -)"
composer -V | grep -m 1 -oE "[0-9]+\.[0-9]+\.[0-9]+" | echo "COMPOSER    : $(cat -)"
symfony  -V | grep -m 1 -oE "[0-9]+\.[0-9]+\.[0-9]+" | echo "SYMFONY-CLI : $(cat -)"
echo ""
if [ -z "$(ls -A /var/www/app)" ]; then
  # Empty
  echo "############################################"
  echo "## Unable to find the Symfony project ... ##"
  echo "############################################"
  echo ""
  echo "1. You need to SSH into the container"
  echo "2. You need to create a new Symfony project"
  echo "3. You need to restart the container"
  echo ""
  echo "############################################"
  echo ""
  tail -f /dev/null
else
  # Not Empty
  echo "###########################"
  echo "## Preparing Symfony ... ##"
  echo "###########################"
  echo ""
  composer install
  echo ""
  echo "##########################"
  echo "## Starting Symfony ... ##"
  echo "##########################"
  echo ""
  symfony serve --no-tls
fi
