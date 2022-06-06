<div align="center">
	<h1>Neovim set-up</h1>
</div>

## 1. Make sure you have Neovim v0.7.0+ installed

> Check neovim documentation: https://neovim.io/

For arch based distros install it with ***(up until 6/4/2022 AUR's neovim version is behind 0.7.0+)*** :
```bash
sudo pacman -S neovim
```
if AUR's package is not v0.7.0+ yet, use snapd:
[Neovim snapd](https://snapcraft.io/nvim)

## 2. Clone the repo inside the .config folder in the root directory

```bash
cd ~/.config && git clone git@github.com:ReynaldoCerpa/nvim.git
```


## 3. Install vim-plug

Run the following command inside .config folder to download **vim-plug**
```bash 
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

once done, restart neovim **(close and open again)** and run `:PlugInstall` 
once its done installing all the plugins, run: `:PlugUpdate`
<p align="center">  
<img src="https://raw.githubusercontent.com/junegunn/i/master/vim-plug/installer.gif" width="600" border="10"/>  
</p>

## 4. Source `init.vim`

You might get a Python error

If so, install the required dependency:
```bash
python3 -m pip install --user --upgrade pynvim
```

The <ins>**first time**</ins> you'll have to do it by hand using the following command:
`:source ~/.config/nvim/init.vim`

Every change you make to the repo will need a source to `init.vim`

<ins>**At this point key-mappings already work, so you can use the mapping for it:**</ins>

inside neovim and in `NORMAL` mode hit the following keys:
`space r s`
wich will automatically source `init.vim`


## 5. Install language servers to enable intellisense

Look for the needed language intellisense in the following repo: 
- ### [Language servers repo](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md?fbclid=IwAR3u1xDM8Gf_cTm6aaj1UqBOVgurla85xIMeilhqi_DnTnpgvFaelkyClxU)

Every lang-server installation is different, but here are the ones used in this repo
```bash
pip install pyright &&

npm install -g typescript typescript-language-server \
 bash-language-server vim-language-server vscode-langservers-extracted \ 
 @tailwindcss/language-server vls &&
  
sudo pacman -S gopls
```

### 5.1 Add new language server
First install it like you saw previously, and then add it to `init.vim` wich is inside ~/.config/nvim/
its should be right after the other lsp.configs already there, use the following template:
```vim
require('lspconfig').<lang-server>.setup {
	coq.lsp_ensure_capabilities()
}
```
Replace `<lang-server>` with the name of the language server and finally, source it

## 6.  Add syntax highlighting

To enable syntax highlighting for a specific language use `:TSInstall <language>`

- Example: `:TSInstall go`

<br />

> Configuration forked from [yorch-JMG's](https://github.com/yorch-JMG/.nvim) .nvim repo
