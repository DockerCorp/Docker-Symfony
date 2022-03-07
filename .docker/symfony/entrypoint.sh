/bin/sh

echo "######################"
echo "## Package versions ##"
echo "######################"
echo ""
php -v | grep PHP | head -1
composer -V
symfony -V
echo -e "\n"

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
  echo -e "\n"
  tail -f /dev/null
else
  # Not Empty
  echo "###########################"
  echo "## Preparing Symfony ... ##"
  echo "###########################"
  echo ""
  composer install
  echo -e "\n"

  echo "##########################"
  echo "## Starting Symfony ... ##"
  echo "##########################"
  echo ""
  symfony serve --no-tls
  echo -e "\n"
fi
