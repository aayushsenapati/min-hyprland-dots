hyprpicker -rzn &


# Wait a bit to ensure hyprpicker starts properly
sleep 0.5

# Capture the screen area selected by the user and copy it to the clipboard
grim -g "$(slurp -d)" - | copyq write image/png -

# Kill hyprpicker
pkill hyprpicker