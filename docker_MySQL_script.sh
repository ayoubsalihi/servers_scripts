#This docker script is used for starting MySql and phpMyAdmin containers

terminal="kitty"

$terminal -e bash -c "echo 'Starting MySQL container...'; sudo docker start mysql; bash" &

$terminal -e bash -c "echo 'Starting phpMyAdmin container...'; sudo docker start phpmyadmin; bash" &

echo "Run select before each Delete query"
#you can set a shortcut on your hyprland.conf like this:
#bind = $mainMod, r, exec, ~/yourPathHere