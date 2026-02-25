vim.o.relativenumber = true
vim.o.number = true
vim.o.cmdheight = 0
vim.g.mapleader = " "
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.pack.add({
    { src = "https://github.com/neovim/nvim-lspconfig.git" },
})
vim.cmd.colorscheme("habamax")
vim.cmd("hi statusline guibg=NONE")
----------------------------------------------------------------------
-- LSP
----------------------------------------------------------------------
----------------------------------------------------------------------
-- Netrw file hiding (press 'a' in netrw to toggle visibility)
----------------------------------------------------------------------
vim.g.netrw_banner = 0
vim.g.netrw_hide = 1
local hide_patterns = {
    "^\\./$",
    -- OS generated files
    "\\.DS_Store",
    "Thumbs\\.db",
    "desktop\\.ini",
    "\\.directory",
    "^__MACOSX/",
    "^\\._",
    "\\.fseventsd",
    "\\.Spotlight-V100",
    "\\.Trashes",
    "\\.TemporaryItems",
    "\\.DocumentRevisions-V100",
    "\\.VolumeIcon\\.icns",
    "\\.com\\.apple\\.timemachine\\.donotpresent",
    "\\.AppleDB",
    "\\.AppleDesktop",
    "\\.apdisk",
    "\\.fuse_hidden",
    "\\.nfs",
    "^nohup\\.out$",
    -- Version control
    "^\\.git/",
    "^\\.svn/",
    "^\\.hg/",
    "^\\.bzr/",
    "^_darcs/",
    "^\\.fossil$",
    "^CVS/",
    -- IDE and editor artifacts
    "^\\.idea/",
    "^\\.vs/",
    "^\\.vscode/",
    "\\.swp$",
    "\\.swo$",
    "\\~$",
    "\\.netrwhist",
    "^tags$",
    "^Session\\.vim$",
    "^\\.history/",
    -- JavaScript / TypeScript / Node.js
    "^node_modules/",
    "^\\.next/",
    "^\\.nuxt/",
    "^\\.svelte-kit/",
    "^\\.output/",
    "^\\.vitepress/",
    "^\\.docusaurus/",
    "^dist/",
    "^\\.turbo/",
    "^\\.vercel/",
    "^\\.netlify/",
    "^\\.serverless/",
    "^\\.cache/",
    "^\\.parcel-cache/",
    "^\\.eslintcache$",
    "^\\.stylelintcache$",
    "^\\.yarn/",
    "^\\.pnpm-store/",
    "^\\.npm/",
    "\\.tsbuildinfo$",
    "^\\.vite/",
    "^\\.firebase/",
    "^\\.dynamodb/",
    "^\\.fusebox/",
    -- Python
    "^__pycache__/",
    "^\\.venv/",
    "^venv/",
    "^env/",
    "^\\.env$",
    "\\.mypy_cache",
    "\\.pytest_cache",
    "\\.ruff_cache",
    "^\\.tox/",
    "^\\.nox/",
    "^\\.hypothesis/",
    "^\\.eggs/",
    "\\.egg-info",
    "\\.pyc$",
    "\\.pyo$",
    "^\\.coverage$",
    "^htmlcov/",
    "\\.ipynb_checkpoints",
    "\\.pytype",
    "\\.pyre",
    "\\.dmypy\\.json$",
    "^\\.pixi/",
    "\\.egg$",
    "^\\.Python$",
    -- C / C++
    "^build/",
    "^Build/",
    "^cmake-build-",
    "^CMakeFiles/",
    "^CMakeCache\\.txt$",
    "\\.o$",
    "\\.obj$",
    "\\.so$",
    "\\.dylib$",
    "\\.dll$",
    "\\.a$",
    "\\.lib$",
    "\\.exe$",
    "\\.out$",
    "\\.dSYM",
    "\\.pdb$",
    "^_deps/",
    "^vcpkg_installed/",
    "^compile_commands\\.json$",
    -- C# / .NET
    "^bin/",
    "^obj/",
    "\\.suo$",
    "\\.user$",
    "^Debug/",
    "^Release/",
    "^packages/",
    "^artifacts/",
    "\\.nupkg$",
    "\\.snupkg$",
    "^TestResults/",
    -- Neovim
    "^nvim-pack-lock\\.json$",
    "^\\.luarc\\.json$",
    "^lazy-lock\\.json$",

    -- Testing / CI
    "^coverage/",
    "\\.nyc_output",
    "^playwright-report/",
    "^test-results/",
    "^storybook-static/",
    "^jest-report/",
}
vim.g.netrw_list_hide = table.concat(hide_patterns, ",")
vim.keymap.set("n", "<leader>f", vim.cmd.Ex)
