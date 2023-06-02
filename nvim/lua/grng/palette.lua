local Color, colors, Group, groups, styles = require('colorbuddy').setup()

-- colors
Color.new('bg', '#2A2426')
Color.new('bg1', '#242021')
Color.new('fg', '#e6d6ac')
Color.new('fg1', '#e6d6ac')
Color.new('red', '#e68183')
Color.new('orange', '#e39b7b')
Color.new('yellow', '#d9bb80')
Color.new('green', '#87af87')
Color.new('cyan', '#87c095')
Color.new('blue', '#89beba')
Color.new('purple', '#d3a0bc')
Color.new('grey', '#444444')
Color.new('light_grey', '#5b5b5b')
Color.new('gold', '#d8caac')

-- groups
Group.new('Normal', colors.fg, nil, nil)
Group.new('Terminal', colors.fg, nil, nil)
Group.new('EndOfBuffer', colors.bg, nil, nil)
Group.new('FoldColumn', colors.grey, nil, nil)
Group.new('Folded', colors.grey, nil, nil)
Group.new('SignColumn', colors.fg, nil, nil)
Group.new('CursorColumn', nil, colors.bg1, nil)
Group.new('LineNr', colors.grey, nil, nil)
Group.new('CursorLineNr', colors.fg, colors.bg1, nil)

Group.new('Pmenu', colors.fg1, colors.bg1)
Group.new('PmenuSel', colors.green, colors.bg1)
Group.new('PmenuSbar', colors.fg1, colors.bg1)
Group.new('PmenuThumb', colors.fg1, colors.bg1)

Group.new('Constant', colors.purple, nil)
Group.new('Boolean', colors.purple, nil)
Group.new('Number', colors.purple, nil)
Group.new('Float', colors.purple, nil)
Group.new('PreProc', colors.purple, nil, styles.italic)
Group.new('PreCondit', colors.purple, nil, styles.italic)
Group.new('Include', colors.purple, nil, styles.italic)
Group.new('Define', colors.purple, nil, styles.italic)
Group.new('Conditional', colors.red, nil, styles.bold + styles.italic)
Group.new('Repeat', colors.red, nil, styles.italic)
Group.new('Keyword', colors.red, nil, styles.bold + styles.italic)
Group.new('Typedef', colors.orange, nil, nil)
Group.new('Exception', colors.red, nil, styles.italic)
Group.new('Statement', colors.red, nil, styles.italic)
Group.new('Function', colors.green, nil, nil)
Group.new('Type', colors.orange, nil, styles.bold)


Group.new('Error', colors.red, nil, nil)
Group.new('Tag', colors.orange, nil, nil)
Group.new('Label', colors.orange, nil, nil)
Group.new('Structure', colors.orange, nil, nil)
Group.new('Operator', colors.orange, nil, nil)
Group.new('Special', colors.red, nil, styles.italic)
Group.new('SpecialChar', colors.red, nil, styles.italic)
Group.new('Character', colors.green, nil, nil)
Group.new('Macro', colors.cyan, nil, nil)
Group.new('Identifier', colors.blue, nil, nil)
Group.new('SpecialKey', colors.blue, nil, nil)
Group.new('String', colors.green, nil, nil)
Group.new('Comment', colors.light_grey, nil, styles.italic)
Group.new('SpecialComment', colors.light_grey, nil, styles.italic)
Group.new('Todo', colors.purple, nil, styles.italic)

Group.new('Delimiter', colors.fg, nil, nil)
Group.new('Ignore', colors.grey, nil, nil)
Group.new('Underlined', nil, nil, styles.underline)

Group.new('fg', colors.fg, nil)
Group.new('Grey', colors.grey, nil)
Group.new('Yellow', colors.yellow, nil)
Group.new('Blue', colors.blue, nil)

Group.new('RedItalic', colors.red, nil, styles.italic)
Group.new('OrangeItalic', colors.orange, nil, styles.italic)
Group.new('PurpleItalic', colors.purple, nil, styles.italic)

Group.new('Red', colors.red, nil)
Group.new('Orange', colors.orange, nil)
Group.new('Purple', colors.purple, nil)
Group.new('Green', colors.green, nil)
Group.new('Cyan', colors.cyan, nil)

Group.new('RedSign', colors.red, nil)
Group.new('OrangeSign', colors.orange, nil)
Group.new('YellowSign', colors.yellow, nil)
Group.new('GreenSign', colors.green, nil)
Group.new('CyanSign', colors.cyan, nil)
Group.new('BlueSign', colors.blue, nil)
Group.new('PurpleSign', colors.purple, nil)


Group.new('Visual', nil, colors.purple)
Group.new('VisualNOS', nil, colors.purple)

-- ts
Group.new("@comment", groups.Comment, groups.Comment, groups.Comment)
Group.new("@function", groups.Function, groups.Function, groups.Function)
Group.new("@function.call", groups.Function, groups.Function, groups.Function + styles.italic)
Group.new("@method", groups.Function, groups.Function, groups.Function)
Group.new("@method.call", groups.Function, groups.Function, groups.Function + styles.italic)
Group.new("@type", groups.Type, groups.Type, groups.Type)
Group.new("@lsp.type.type", groups.Type, groups.Type, groups.Type)


-- nvim.cmp
Group.new('CmpItemAbbr', colors.fg, nil, nil)
Group.new('CmpItemAbbrDeprecated', colors.fg, nil, nil)
Group.new('CmpItemAbbrMatch', colors.blue, nil, nil)
Group.new('CmpItemAbbrMatchFuzzy', colors.blue, nil, nil)
Group.new('CmpItemMenu', colors.grey, nil, nil)
Group.new('CmpItemKindText', colors.orange, nil, nil)
Group.new('CmpItemKindVariable', colors.orange, nil, styles.italic)
Group.new('CmpItemKindMethod', colors.orange, nil, styles.italic)
Group.new('CmpItemKindFunction', colors.orange, nil, styles.italic)
Group.new('CmpItemKindConstructor', colors.orange, nil, styles.italic)
Group.new('CmpItemKindUnit', colors.blue, nil, styles.italic)

-- netrw
Group.new("netrwDir", colors.fg)
Group.new("netrwCmdSep", colors.fg)
