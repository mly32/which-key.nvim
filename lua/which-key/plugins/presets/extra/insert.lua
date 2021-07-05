local M = {}

--[[
changed: i_CTRL-C

dependent on setting:
- insertmode: i_CTRL-C, i_CTRL_L

--]]

M.missing = { ["{char1}<BS>{char2}"] = "enter digraph (only when 'digraph' option set)" }

M.same_as = {
  ["<C-g>j"] = { "<C-g><C-j>", "<C-g><Down>" },
  ["<C-g>k"] = { "<C-g><C-k>", "<C-g><Up>" },
  ["<BS>"] = { "<C-h>" },
  ["<Tab>"] = { "<C-i>" },
  ["<CR>"] = { "<NL>", "<C-j>" },
}

M.mapping = {
  ["<C-@>"] = "insert previously inserted text and stop insert",
  ["<C-a>"] = "insert previously inserted text",
  ["<C-c>"] = "quit insert mode, without checking for abbreviation",
  ["<C-d>"] = "delete one shiftwidth of indent in the current line",
  ["<C-e>"] = "insert the character which is below the cursor",
  ["<C-g>j"] = "line down, to column where inserting started",
  ["<C-g>k"] = "line up, to column where inserting started",
  ["<C-g>u"] = "start new undoable edit",
  ["<C-g>U"] = "don't break undo with next cursor movement",
  ["<BS>"] = "delete character before the cursor",
  ["<Tab>"] = "insert a <Tab> character",
  ["<C-k>"] = "�,� enter digraph",
  ["<C-l>"] = "Leave Insert mode",
  ["<CR>"] = "begin new line",
  ["<C-m>"] = "same as <CR>",
  ["<C-n>"] = "find next match for keyword in front of the cursor",
  ["<C-o>"] = "execute a single command and return to insert mode",
  ["<C-p>"] = "find previous match for keyword in front of the cursor",
  ["<C-q>"] = "same as CTRL-V, unless used for terminal control flow",
  -- ["<C-S-q> {char}"] = "like CTRL-Q unless |modifyOtherKeys| is active",
  -- ["<C-r> {register}"] = "insert the contents of a register",
  -- ["<C-r><C-r> {register}"] = "insert the contents of a register literally",
  -- ["<C-r><C-o> {register}"] = "insert the contents of a register literally and don't auto-indent",
  -- ["<C-r><C-p> {register}"] = "insert the contents of a register literally and fix indent.",
  ["<C-t>"] = "insert one shiftwidth of indent in currentline",
  ["<C-u>"] = "delete all entered characters in the current line",
  ["<C-v>"] = "insert three digit decimal number as a single byte or insert next non-digit literally",
  -- ["<C-S-v> {char}"] = "like CTRL-V unless |modifyOtherKeys| is active",
  ["<C-w>"] = "delete word before the cursor",
  ["<C-x>"] = {
    name = "sub",
    ["<C-d>"] = "complete defined identifiers",
    ["<C-e>"] = "scroll up",
    ["<C-f>"] = "complete file names",
    ["<C-i>"] = "complete identifiers",
    ["<C-k>"] = "complete identifiers from dictionary",
    ["<C-l>"] = "complete whole lines",
    ["<C-n>"] = "next completion",
    ["<C-o>"] = "omni completion",
    ["<C-p>"] = "previous completion",
    ["<C-s>"] = "spelling suggestions",
    ["<C-t>"] = "complete identifiers from thesaurus",
    ["<C-y>"] = "scroll down",
    ["<C-u>"] = "complete with 'completefunc'",
    ["<C-v>"] = "complete like in : command line",
    ["<C-]>"] = "complete tags",
    ["s"] = "spelling suggestions",
  },
  ["<C-y>"] = "insert the character which is above the cursor",
  ["<C-z>"] = "when 'insertmode' set: suspend Vim",
  ["<Esc>"] = "end insert mode (unless 'insertmode' set)",
  ["<C-[>"] = "same as <Esc>",
  ["<C-\\>"] = {
    name = "mode",
    ["<C-n>"] = "go to Normal mode",
    ["<C-g>"] = "go to mode specified with 'insertmode'",
  },
  ["<C-]>"] = "trigger abbreviation",
  ["<C-^>"] = "toggle use of |:lmap| mappings",
  ["<C-_>"] = "When 'allowrevins' set: change language (Hebrew)",
  ["0<C-d>"] = "delete all indent in the current line",
  ["^<C-d>"] = "delete all indent in the current line, restore it in the next line",
  ["<Del>"] = "delete character under the cursor",
  ["<Left>"] = "cursor one character left",
  ["<S-Left>"] = "cursor one word left",
  ["<C-Left>"] = "cursor one word left",
  ["<Right>"] = "cursor one character right",
  ["<S-Right>"] = "cursor one word right",
  ["<C-Right>"] = "cursor one word right",
  ["<Up>"] = "cursor one line up",
  ["<S-Up>"] = "same as <PageUp>",
  ["<Down>"] = "cursor one line down",
  ["<S-Down>"] = "same as <PageDown>",
  ["<Home>"] = "cursor to start of line",
  ["<C-Home>"] = "cursor to start of file",
  ["<End>"] = "cursor past end of line",
  ["<C-End>"] = "cursor past end of file",
  ["<PageUp>"] = "one screenful backward",
  ["<PageDown>"] = "one screenful forward",
  ["<F1>"] = "same as <Help>",
  ["<Help>"] = "stop insert mode and display help window",
  ["<Insert>"] = "toggle Insert/Replace mode",
}

M.mouse = {
  ["<LeftMouse>"] = "cursor at mouse click",
  ["<ScrollWheelDown>"] = "move window three lines down",
  ["<S-ScrollWheelDown>"] = "move window one page down",
  ["<ScrollWheelUp>"] = "move window three lines up",
  ["<S-ScrollWheelUp>"] = "move window one page up",
  ["<ScrollWheelLeft>"] = "move window six columns left",
  ["<S-ScrollWheelLeft>"] = "move window one page left",
  ["<ScrollWheelRight>"] = "move window six columns right",
  ["<S-ScrollWheelRight>"] = "move window one page right",
}

M.popup_menu = {
  ["<C-e>"] = "stop completion and go back to original text",
  ["<C-y>"] = "accept selected match and stop completion",
  ["<C-l>"] = "insert one character from the current match",
  ["<CR>"] = "insert currently selected match",
  ["<BS>"] = "delete one character and redo search",
  ["<C-h>"] = "same as <BS>",
  ["<Up>"] = "select the previous match",
  ["<Down>"] = "select the next match",
  ["<PageUp>"] = "select a match several entries back",
  ["<PageDown>"] = "select a match several entries forward",
}

return M
