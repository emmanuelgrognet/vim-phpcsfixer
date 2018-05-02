# vim-php-cs-fixer
__________________

## Introduction

vim-php-cs-fixer is a vim plugin for integrate [PHP Coding Standards Fixer](https://cs.sensiolabs.org/) in vim.

## Requirement

- vim or neovim
- [php-cs-fixer.phar](https://github.com/FriendsOfPHP/PHP-CS-Fixer)
- php

## Installation

### Installation with pathogen

    cd ~/.vim/bundle
    git clone https://github.com/emmanuelgrognet/vim-phpcsfixer.git

### Installation with vim-plug

    Plug 'vim-phpcsfixer'

## Configuration

### Set path of php-cs-fixer.path

For example :

    let g:php_cs_fixer_phar_path = 'c:\Program Files\php71\php-cs-fixer.phar'

### Mapping

To call the plugin define your key mapping.

    nmap <silent> <Leader>pcs :call PHPCSFix()<CR>

### Options availables

    let g:vim_php_cs_fixer_php_path = 'php'
    let g:vim_php_cs_fixer_rules = '@PSR1,@PSR2'
