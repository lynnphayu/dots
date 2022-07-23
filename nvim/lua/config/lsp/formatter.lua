local M = {}

M.setup = function(client)
  -- Resolve formatter conflicts
  if client.name == 'sumneko_lua' or client.name == 'tsserver' or client.name == 'jsonls' then
    client.resolved_capabilities.document_formatting = false
    client.resolved_capabilities.document_range_formatting = false
  end
end

return M
