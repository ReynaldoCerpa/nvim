
"  _                                          _                 
" | |                                        (_)                
" | | _____ _   _ _ __ ___   __ _ _ __  _ __  _ _ __   __ _ ___ 
" | |/ / _ \ | | | '_ ` _ \ / _` | '_ \| '_ \| | '_ \ / _` / __|
" |   <  __/ |_| | | | | | | (_| | |_) | |_) | | | | | (_| \__ \
" |_|\_\___|\__, |_| |_| |_|\__,_| .__/| .__/|_|_| |_|\__, |___/
"           __/ |               | |   | |             __/ |    
"          |___/                |_|   |_|            |___/     


inoremap kj <Esc>
nnoremap H gT
nnoremap L gt
nnoremap <C-n> :NERDTreeToggle<CR>
nmap <leader>rs :source ~/.config/nvim/init.vim<CR>
"Files in directory"
nmap <leader>f :Telescope find_files<CR>
"Search in lines of buffer"
nmap <C-f> :BLines<CR>
"Commits on branch"
nmap <leader>c :BCommits<CR>
"Git files status"
nmap <leader>gfs :GFiles?<CR>
"Files in repo"
nmap <leader>gf :GFiles<CR>
"Emergency Exit"
nmap <leader>qw :q!<CR>
"Exit and Save"
nmap <leader>es :wq<CR>
"Save"
nmap <leader>s :w<CR>
"Close window if possible"
nmap <leader>cw :q<CR>
"Opens empty tab"
nmap <leader>tt :tabnew<CR>
"Update PlugIns"
nmap <leader>upi :PlugInstall<CR> 
"Git Status to see staged or modified files"
nmap <leader>gs :G<CR>
"Git commit staged changes"
nmap <leader>gc :Git commit<CR>
"Git push commits to repo"
nmap <leader>gph :Git push<CR>
"Git pull changes to local repo"
nmap <leader>gpl :Git pull<CR>
nmap <leader>gl :diffget //3<CR>
nmap <leader>gh :diffget //2<CR>
"open terminal below"
nnoremap <c-t> :let $VIM_DIR=expand('%:p:h')<CR>:split<CR>:ter<CR>:resize 15<CR>:set nonu<CR>:set nornu<CR>Acd $VIM_DIR<CR>clear<CR>
nnoremap <silent> <up> :resize +5<CR>
nnoremap <silent> <down> :resize -5<CR>
tnoremap <leader>nn <Esc> <C-\><C-n>
nnoremap <leader>jj <C-w><C-w><CR>
"Substitute"
nmap <leader>S :%s//g<left><left>
nmap <leader>ccs :colorscheme<space>

nmap <leader>cs :OmniSharpCodeFormat<CR>


