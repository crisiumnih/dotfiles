-- Function to prompt user for theme selection
function choose_theme()
  local theme_choice = vim.fn.input("Choose theme: [0] Dark_Default, [1] Light_Default: ")

  if theme_choice == "0" then
    vim.cmd('colorscheme github_dark_default')
  elseif theme_choice == "1" then
    vim.cmd('colorscheme github_light_default')
  else
    print("Invalid choice. Using default theme.")
    vim.cmd('colorscheme github_dark_default') -- Default fallback
  end
end

-- Call the function to choose theme at startup
choose_theme()

