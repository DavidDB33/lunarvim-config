-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--lvim.keys.normal_mode['<F8>'] = '<cmd>bn<cr>')
--vim.keys.set('n', '<F7>', '<cmd>bN<cr>')
--vim.keys.set('n', '<C-A-k>', '<cmd>bn<cr>')
--vim.keys.set('n', '<C-A-j>', '<cmd>bN<cr>')
lvim.builtin.telescope.defaults.initial_mode = "normal"
lvim.keys.normal_mode['<C-A-k>'] = '<cmd>BufferLineCycleNext<cr>'
lvim.keys.normal_mode['<C-A-j>'] = '<cmd>BufferLineCyclePrev<cr>'
lvim.keys.normal_mode['<C-A-l>'] = '<cmd>BufferLineMoveNext<cr>'
lvim.keys.normal_mode['<C-A-h>'] = '<cmd>BufferLineMovePrev<cr>'

-- LSP commands
lvim.builtin.which_key.mappings["lR"] = {'<cmd>LspRestart<cr>', 'Restart LSP'}

-- Plugin load
lvim.plugins = {
    { "github/copilot.vim" },
    { "hrsh7th/nvim-cmp" },
    { "neoclide/coc.nvim", branch = "release" },
    { "vim-test/vim-test" } -- To execute tests. Check out vim-test config below
}

-- Copilot commands
lvim.builtin.which_key.mappings["C"] = {'<cmd>Copilot panel<cr>', 'Copilot hints'}

-- Vim-test config. Use space + t for testing
lvim.builtin.which_key.mappings["t"] = {'<cmd>TestSuit<cr>', 'Execute tests'}
vim.g['test#enabled_runners'] = {'python#pytest'}
