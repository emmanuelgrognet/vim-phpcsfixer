"=====================================================================================
" Description:  PHP CS Fixer vim integration	
"
" Maintener: 	Emmanuel Grognet <emmanuel AT grognet DOT fr>
"
" License: 	    Copyright (C) 2018 Emmanuel Grognet
"   		    This program is free software; you can redistribute it and/or
"       		modify it under the terms of the GNU General Public License
"	        	as published by the Free Software Foundation; either version 2
"		        of the License, or (at your option) any later version.
"         		This program is distributed in the hope that it will be useful,
"	        	but WITHOUT ANY WARRANTY; without even the implied warranty of
"		        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
"   		    GNU General Public License for more details.
"   	    	You should have received a copy of the GNU General Public License
"	    	    along with this program.  If not, see <http://www.gnu.org/licenses/>.
"=====================================================================================

if exists('g:vim_php_cs_fixer_loaded')
	finish
endif
let g:vim_php_cs_fixer_loaded = 1

if !exists('g:vim_php_cs_fixer_php_path')
    let g:vim_php_cs_fixer_php_path = 'php'
endif

if !exists('g:vim_php_cs_fixer_rules')
    let g:vim_php_cs_fixer_rules = '@PSR1,@PSR2,@Symfony'
endif

function! s:ErrorMessage(messageTxt)
    echohl WarningMsg
	echo messageTxt
	echohl None
endfunction

function! PHPCSFix()
	if !exists('g:php_cs_fixer_phar_path')
		ErrorMessage('Please set g:php_cs_fixer_phar_path before...')
		return 0
    endif
	if bufname("%") == ''
		ErrorMessage('Please save the buffer before...')
		return 0
	endif
	silent write
    let result = system (g:vim_php_cs_fixer_php_path . ' "' . g:php_cs_fixer_phar_path . '" fix ' . bufname("%") . ' --rules=' . g:vim_php_cs_fixer_rules)
	silent :edit!
endfunction
