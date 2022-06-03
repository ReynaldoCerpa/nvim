"  _       _ _          _          
" (_)     (_) |       (_)          
"  _ __  _| |___   ___ _ __ ___  
" | | '_ \| | __\ \ / / | '_ ` _ \ 
" | | | | | | |_ \ V /| | | | | | |
" |_|_| |_|_|\__(_)_/ |_|_| |_| |_|
                                 
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/editor-config/configuration.vim
source $HOME/.config/nvim/editor-config/key-mappings/keymappings.vim 
let g:coq_settings = { 'auto_start': 'shut-up' }
lua <<EOF
	require'alpha'.setup(require'alpha.themes.dashboard'.config)
	require'colorizer'.setup()
  require'nvim-treesitter.configs'.setup {
    -- Modules and its options go here
    highlight = { enable = true },
    incremental_selection = { enable = true },
    textobjects = { enable = true },
  }
require('lualine').setup()
require'nvim-tree'.setup()
require('telescope').setup({
	defaults = { file_ignore_patterns = {"node_modules", "autoload"},
	preview= false}
})
local coq = require"coq"
  require'lspconfig'.tsserver.setup(coq.lsp_ensure_capabilities())
 	require'lspconfig'.clangd.setup(coq.lsp_ensure_capabilities())
  require'lspconfig'.pyright.setup(coq.lsp_ensure_capabilities())
  require'lspconfig'.bashls.setup(coq.lsp_ensure_capabilities())
	require'lspconfig'.vimls.setup(coq.lsp_ensure_capabilities())
	require'lspconfig'.hls.setup(coq.lsp_ensure_capabilities())
 	require('rust-tools').setup(coq.lsp_ensure_capabilities())
 	require'lspconfig'.cssls.setup(coq.lsp_ensure_capabilities())
 	require'lspconfig'.tailwindcss.setup(coq.lsp_ensure_capabilities())
 	require'lspconfig'.csharp_ls.setup(coq.lsp_ensure_capabilities())
	require'lspconfig'.vuels.setup{coq.lsp_ensure_capabilities()}
	require'lspconfig'.jsonls.setup {coq.lsp_ensure_capabilities()}
 	require'lspconfig'.gopls.setup(coq.lsp_ensure_capabilities(
		 {
				cmd = {"gopls", "serve"},
				settings = {
					gopls = {
						analyses = {
							unusedparams = true,
						},
						staticcheck = true,
					},
				},
			}
 	)
	) 
EOF
