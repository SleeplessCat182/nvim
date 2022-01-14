local tree = {}
tree.toggle = function()
  require'nvim-tree'.toggle()
  if require'nvim-tree.view'.win_open() then
    require'bufferline.state'.set_offset(30, 'File Tree')
  else
    require'bufferline.state'.set_offset(0)
  end
end

return tree
