return
{
  'akinsho/bufferline.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('bufferline').setup {
      options = {
        mode = "tabs",  -- Режим "вкладки" вместо буферов
        show_buffer_close_icons = false,
        show_close_icon = false,
      }
    }
  end

}
