# Opens the nvim config folder, goes back to previous dir after closing nvim
function vimc() {
  dir=$(pwd)
  cd ~/.config/nvim || return
  nvim
  cd "$dir" || return
}

# cpp
function ccpp() {
  g++ -o output "$1"
  ./output
}

# Function to change the theme in Alacritty's config
function theme {
   if [ $# -ne 1 ]; then
      echo "Usage: $0 <light|dark>" 
      exit 1
   fi

   theme=$1

   # Check if the input is either "light" or "dark"
   if [[ "$theme" != "light" && "$theme" != "dark" ]]; then
      echo "Error: Theme must be either 'light' or 'dark'."
      exit 1
   fi

   # File paths
   alacritty_config="$HOME/.config/alacritty/alacritty.toml"
   zshrc_file="$HOME/.zshrc"
   oh_my_posh_config="$HOME/.config/ohmyposh/config.toml"
   template_config="$HOME/.config/ohmyposh/${theme}.toml"

   # Update Alacritty config
   awk -v theme="$theme" 'NR==1 {print "import = [\"~/.config/alacritty/" theme ".toml\"]"} NR>1' "$alacritty_config" > "$alacritty_config.tmp"
   mv "$alacritty_config.tmp" "$alacritty_config"

   cp "$template_config" "$oh_my_posh_config"

   echo "Alacritty theme and Oh My Posh config changed to $theme."
}

