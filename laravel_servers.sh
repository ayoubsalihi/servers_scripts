#setting project directory path
project_dir="$HOME/SetYourPathHere"

# type of terminal
terminal="kitty" #I'm working with kitty you can replace it with your personnal terminal

# frontend
$terminal --working-directory "$project_dir" -e bash -c "echo 'Starting npm server...'; npm run dev; bash" &

# backend
$terminal --working-directory "$project_dir" -e bash -c "echo 'Starting backend server...'; php artisan serve; bash" &

echo "Servers are running on 8000 and 5173"

#you can set a shortcut on your hyprland.conf like this:
#bind = $mainMod, r, exec, ~/yourPathHere
