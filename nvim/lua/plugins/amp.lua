return {
  {
    "sourcegraph/amp.nvim",
    event = "VeryLazy",
    keys = {
      { "<leader>a", "", desc = "+ai", mode = { "n", "v" } },
      { "<leader>as", "<cmd>AmpSend<cr>", mode = { "n", "v" }, desc = "Send to amp" },
    },
    config = function(_, opts)
      require("amp").setup(opts)

      vim.api.nvim_create_user_command("AmpSend", function(args)
        local bufname = vim.api.nvim_buf_get_name(0)
        if bufname == "" then
          print("Current buffer has no filename")
          return
        end

        local line1, line2 = nil, nil
        if args.range > 0 then
          line1, line2 = args.line1, args.line2
        end

        local mode = vim.fn.mode()
        if mode == "v" or mode == "V" or mode == "\22" then
          line1, line2 = vim.fn.line("v"), vim.fn.line(".")
          if line1 > line2 then
            line1, line2 = line2, line1
          end
        end

        local ref = "@" .. vim.fn.fnamemodify(bufname, ":.")
        if line1 and line2 then
          if line1 == line2 then
            ref = ref .. "#L" .. line1
          else
            ref = ref .. "#L" .. line1 .. "-" .. line2
          end
        end

        local message = require("amp.message")
        message.send_to_prompt(ref .. " ")
      end, {
        desc = "Add file reference (with selection) to Amp prompt",
        range = true,
      })
    end,
  },
}
