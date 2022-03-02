/bin/sh

echo "######################"
echo "## Package versions ##"
echo "######################"
php -v | grep PHP | head -1
composer -V
symfony -V
echo -e "\n"

echo "###########################"
echo "## Preparing Symfony ... ##"
echo "###########################"
composer install
echo -e "\n"

echo "##########################"
echo "## Starting Symfony ... ##"
echo "##########################"
symfony serve --no-tls
echo -e "\n"
