return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {"nvim-telescope/telescope-fzf-native.nvim", build="make"},
      "nvim-tree/nvim-web-devicons",
    },
  

    --Configuracion--
    config = function()
      local telescope = require("telescope")
      local actions   = require("telescope.actions")
      
      telescope.setup({
	defaults = {
	  mappings = {
	    i = {
	      ["<C->k"] = actions.move_selection_previous,
	      ["<C->j"] = actions.move_selection_next,
	      ["<C->q"] = actions.send_selected_to_qflist + actions.open_qflist,
	    }
	  }
	}
      })
    
      telescope.load_extension("fzf")
      -- set keymaps
      
     local keymap = vim.keymap

      keymap.set("n","<leader>ff","<cmd>Telescope find_files<cr>",{desc="Fuzzy busca archivos en el actual cwd"})
      keymap.set("n","<leader>fr","<cmd>Telescope oldfiles<cr>",{desc="Fuzzy busca en archivos recientes"})
      keymap.set("n","<leader>fs","<cmd>Telescope live_grep<cr>",{desc="Busca String en el cwd"})
      keymap.set("n","<leader>fc","<cmd>Telescope grep_string<cr>",{desc="Busca cadena bajo el curso en el cwd"})
      
      
      
    end
    
  }
