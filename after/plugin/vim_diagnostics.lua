vim.diagnostic.config({
  virtual_text = true,  -- Shows inline error messages
  signs = true,         -- Enables the signs in the gutter
  underline = true,     -- Underlines the offending code
  update_in_insert = false, -- Don't update diagnostics in insert mode
  severity_sort = true, -- Sort diagnostics by severity
  float = {
    border = "rounded",
    source = "always",  -- Show the source of the diagnostic
    header = "",
    prefix = "",
  },
})
