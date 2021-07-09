-- Arduino support configuration.

local utils = require('utils')

utils.debug('S Arduino plugin configuration sequence started')

-- Configure shortcuts.
utils.map('n', '<Leader>av', ':ArduinoVerify<CR>')
utils.map('n', '<Leader>aup', ':ArduinoUpload<CR>')
utils.map('n', '<Leader>aus', ':ArduinoUploadAndSerial<CR>')
utils.map('n', '<Leader>ab', ':ArduinoChooseBoard<CR>')
utils.map('n', '<Leader>ap', ':ArduinoChooseProgrammer<CR>')

-- Add custom status line with info about Arduino-related stuff.
-- my_file.ino [arduino:avr:uno] [arduino:usbtinyisp] (/dev/ttyACM0:9600)
vim.cmd [[ function! ArduinoStatusLine()
  let port = arduino#GetPort()
  let line = '%f [' . g:arduino_board . '] [' . g:arduino_programmer . ']'
  if !empty(port)
    let line = line . ' (' . port . ':' . g:arduino_serial_baud . ')'
  endif
  return line
endfunction ]]

-- Display Arduingo status bar.
vim.cmd "au BufNewFile,BufRead *.ino let f:airline_section_x='%{ArduinoStatusLine()}'"

utils.debug('S Arduino plugin configuration sequence finished')
