# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Projects/Qalendar"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "Qalendar"; then
  
  new_window "neovim"
  run_cmd "cd ~/Projects/uwdp"
  split_v 20
  run_cmd "cd ~/Projects/Qalendar/frontend && npm install && npm run dev"
  split_h 50
  run_cmd "cd ~/Projects/Qalendar/QalendarProject && source .venv/bin/activate && python manage.py runserver"

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session