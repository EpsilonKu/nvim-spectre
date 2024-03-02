set rtp +=./
set rtp +=../plenary.nvim/

runtime! plugin/plenary.vim

set nowritebackup
set noswapfile
set nobackup


lua << EOF
--_G.__is_log = true
require('spectre.init')
require('spectre').setup({
  lnum_for_results = false
})
require('tests/helper').init()
EOF

