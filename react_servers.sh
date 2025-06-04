# setting project path
project_dir="$HOME/setYourPathHere"

# terminal type, i'm using kitty you can replace it with whatever terminal you have
terminal="kitty"

# Frontend (React & TS) For example
$terminal --working-directory "$project_dir/clientPathFolder" -e bash -c "echo 'Starting React client...'; npm run dev; bash" &

# Backend servers (Laravel)
$terminal --working-directory "$project_dir/serverPathFolder" -e bash -c "echo 'Starting Laravel server...'; php artisan serve --host 0.0.0.0; bash" &
$terminal --working-directory "$project_dir/serverPathFolder" -e bash -c "echo 'Starting Queue worker...'; php artisan queue:work; bash" &
$terminal --working-directory "$project_dir/serverPathFolder" -e bash -c "echo 'Starting Reverb...'; php artisan reverb:start; bash" &

# Mobile app (React Native & expo)
$terminal --working-directory "$project_dir/MobilePathFOlder" -e bash -c "echo 'Starting Expo app...'; npx expo start; bash" &

echo "All servers launched"
