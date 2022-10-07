--if !exists('g:lspconfig')
--finish
-- #endif


-- lua <<EOF
local nvim_lsp = require('lspconfig')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local on_attach = function(client, bufnr)
   local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

   local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

   buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

   -- Mappings.
   local opts = { noremap = true, silent = true }
   buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
   buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
   buf_set_keymap('n', 'ga', '<Cmd>lua vim.lsp.buf.code_action()<CR>', opts)
   buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
   buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
   buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
   buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
   buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
   buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
   buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
   buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
   buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
   buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
   buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
   buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
   buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

   -- Set some keybinds conditional on server capabilities
   --   if client.server_capabilities.document_formatting then
   --   buf_set_keymap("n", "[D", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
   -- elseif client.server_capabilities.document_range_formatting then
   --  buf_set_keymap("n", "[D", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
   --end

   -- Set autocommands conditional on server_capabilities
   if client.server_capabilities.document_highlight then
      vim.api.nvim_exec([[
      hi LspReferenceRead cterm=bold ctermbg=DarkMagenta guibg=LightYellow
      hi LspReferenceText cterm=bold ctermbg=DarkMagenta guibg=LightYellow
      hi LspReferenceWrite cterm=bold ctermbg=DarkMagenta guibg=LightYellow
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]] , false)
   end

   --formatting
   if client.name == 'tsserver' then
      client.server_capabilities.documentFormattingProvider = false
   end

   if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_command [[augroup Format]]
      vim.api.nvim_command [[autocmd! * <buffer>]]
      vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
      vim.api.nvim_command [[augroup END]]
   end

end

nvim_lsp.diagnosticls.setup {
   on_attach = on_attach,
   filetypes = { 'javascript', 'javascriptreact', 'json', 'typescript', 'typescriptreact', 'css', 'less', 'scss',
      'markdown', 'pandoc' },
   init_options = {
      linters = {
         eslint = {
            command = 'eslint_d',
            rootPatterns = { '.git' },
            debounce = 100,
            args = { '--stdin', '--stdin-filename', '%filepath', '--format', 'json' },
            sourceName = 'eslint_d',
            parseJson = {
               errorsRoot = '[0].messages',
               line = 'line',
               column = 'column',
               endLine = 'endLine',
               endColumn = 'endColumn',
               message = '[eslint] ${message} [${ruleId}]',
               security = 'severity'
            },
            securities = {
               [2] = 'error',
               [1] = 'warning'
            }
         },
      },
      filetypes = {
         javascript = 'eslint',
         javascriptreact = 'eslint',
         typescript = 'eslint',
         typescriptreact = 'eslint',
      },
      formatters = {
         eslint_d = {
            command = 'eslint_d',
            rootPatterns = { '.git' },
            args = { '--stdin', '--stdin-filename', '%filename', '--fix-to-stdout' },
         },
         prettier = {
            command = 'prettier_d_slim',
            rootPatterns = { '.git' },
            -- requiredFiles: { 'prettier.config.js' },
            args = { '--stdin', '--stdin-filepath', '%filename' }
         }
      },
      formatFiletypes = {
         css = 'prettier',
         javascript = 'prettier',
         javascriptreact = 'prettier',
         json = 'prettier',
         scss = 'prettier',
         less = 'prettier',
         typescript = 'prettier',
         typescriptreact = 'prettier',
         markdown = 'prettier',
      }
   }
}


nvim_lsp.gopls.setup {
   cmd = { 'gopls', 'serve' },
   -- for postfix snippets and analyzers
   capabilities = capabilities,
   settings = {
      gopls = {
         experimentalPostfixCompletions = true,
         analyses = {
            unusedparams = true,
            shadow = true,
         },
         staticcheck = true,
      },
   },
   on_attach = on_attach,
}

nvim_lsp.tsserver.setup {
   on_attach = on_attach
}

nvim_lsp.rust_analyzer.setup {
   on_attach = on_attach
}
nvim_lsp.dartls.setup {
   on_attach = on_attach,
   capabilities = capabilities,
   filetypes = { "dart" }
}
nvim_lsp.ccls.setup {
   on_attach = on_attach,
   capabilities = capabilities,
   init_options = {
      directory = ".ccls-cache";
      compilationDatabaseDirectory = "build";
   }
}
nvim_lsp.sumneko_lua.setup {
   on_attach = on_attach,
   settings = {
      Lua = {
         runtime = {
            version = 'LuaJIT'
         },
         telemetry = {
            enable = false
         },
         diagnostics = {
            globals = { "vim" }
         },
         workspace = {
            -- Make the server aware of Neovim runtime files
            library = { [vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true }
         }
      },
   }
}

-- EOF


-- "autocmd BufWritePre *.go lua goimports(1000)
-- "autocmd BufWritePre *.go lua vim.lsp.buf.formatting()
