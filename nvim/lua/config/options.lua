local options = {
  opt = {
      cursorline = true,
      expandtab = true,
      fillchars = { eob = ' ' },
      gdefault = true,
      guicursor = '',
      ignorecase = true,
      mouse = '',
      number = true,
      numberwidth = 3,
      relativenumber = true,
      scrolloff = 5,
      shiftwidth = 4,
      showcmd = false,
      showmode = false,
      smartcase = true,
      softtabstop = 4,
      splitbelow = true,
      splitright = true,
      swapfile = false,
      tabstop = 4,
  },
  g = {
    mapleader = ' ',
  },
}

for scope, table in pairs(options) do
  for option, value in pairs(table) do
    vim[scope][option] = value
  end
end

vim.opt.shortmess:append { I = true }
