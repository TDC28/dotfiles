# Opens the nvim config folder, goes back to previous dir after closing nvim
function vimc() {
  dir=$(pwd)
  cd ~/.config/nvim || return
  nvim
  cd "$dir" || return
}
