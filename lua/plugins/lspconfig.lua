return {
  'neovim/nvim-lspconfig',

  dependencies = {
    'williamboman/mason.nvim',
    'hrsh7th/nvim-cmp',

    'lopi-py/luau-lsp.nvim',
  },

  config = function()
    local lspconfig = require('lspconfig')
    local mason_lspconfig = require('mason-lspconfig')
    local cmp_nvim_lsp = require('cmp_nvim_lsp')

    local function onattach(callback)
      if callback then
        callback()
      end
    end

    mason_lspconfig.setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = cmp_nvim_lsp.capabilities,
          onattach = onattach()
        })
      end,
      luau_lsp = function()
        local luau_lsp = require('luau-lsp')

        luau_lsp.setup({
          server = {
            filetypes = { 'lua', 'luau' },
            capabilities = cmp_nvim_lsp.capabilities,
            settings = {
              ['luau-lsp'] = {
                completion = {
                  imports = {
                    enabled = true
                  },
                },
              },
            },
          },
        })
      end,
    })

    local function sign(type, icon)
      vim.fn.sign_define('DiagnosticSign' .. type, { text = icon, texthl = 'DiagnosticSign' .. type })
    end

    sign('Error', 'e')
    sign('Warn', 'w')
    sign('Hint', 'h')
    sign('Info', 'i')
  end,
}
