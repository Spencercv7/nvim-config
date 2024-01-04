function open_workspace()
  local current_path = vim.fn.expand "%:p:h"
  local parent_path = vim.fn.fnamemodify(current_path, ":h")

  if vim.fn.fnamemodify(parent_path, ":t") == "workspace" then
    -- If the parent directory is named 'workspace', open it
    vim.fn.system(string.format("tmux split-window -h -c %s nvim", vim.fn.shellescape(parent_path)))
  else
    -- Otherwise, find the nearest parent directory named 'workspace'
    while #parent_path > 1 do
      local grandparent_path = vim.fn.fnamemodify(parent_path, ":h")
      if vim.fn.fnamemodify(grandparent_path, ":t") == "workspace" then
        vim.fn.system(string.format("tmux split-window -h -c %s nvim", vim.fn.shellescape(parent_path)))
        return
      end
      parent_path = grandparent_path
    end
  end
end
