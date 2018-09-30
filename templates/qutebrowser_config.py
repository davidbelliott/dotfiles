config.load_autoconfig = False

c.content.ssl_strict = False
c.content.private_browsing = False

c.url.auto_search = "dns"
c.url.searchengines = {"DEFAULT": "https://google.com/search?q={}"}
c.url.start_pages = ["about:blank"]

base00 = "#{{ base00 }}"
base01 = "#{{ base01 }}"
base02 = "#{{ base02 }}"
base03 = "#{{ base03 }}"
base04 = "#{{ base04 }}"
base05 = "#{{ base05 }}"
base06 = "#{{ base06 }}"
base07 = "#{{ base07 }}"
base08 = "#{{ base08 }}"
base09 = "#{{ base09 }}"
base0A = "#{{ base0A }}"
base0B = "#{{ base0B }}"
base0C = "#{{ base0C }}"
base0D = "#{{ base0D }}"
base0E = "#{{ base0E }}"
base0F = "#{{ base0F }}"

c.colors.completion.category.bg = base01
c.colors.completion.category.border.bottom = c.colors.completion.category.bg
c.colors.completion.category.border.top = c.colors.completion.category.bg
c.colors.completion.category.fg = base04
c.colors.completion.fg = base05
c.colors.completion.item.selected.bg = base02
c.colors.completion.item.selected.border.bottom = base02
c.colors.completion.item.selected.border.top = base02
c.colors.completion.item.selected.fg = base05
c.colors.completion.match.fg = base08
c.colors.completion.even.bg = base00
c.colors.completion.odd.bg = base00
c.colors.completion.scrollbar.bg = base00
c.colors.completion.scrollbar.fg = base05
c.colors.downloads.bar.bg = base00
c.colors.downloads.error.bg = base08
c.colors.downloads.error.fg = base06
c.colors.downloads.start.bg = base0D
c.colors.downloads.start.fg = base06
c.colors.downloads.stop.bg = base0B
c.colors.downloads.stop.fg = base06
c.colors.hints.bg = base00
c.colors.hints.fg = base05
c.colors.hints.match.fg = base0A
c.colors.keyhint.bg = base00
c.colors.keyhint.fg = base05
c.colors.keyhint.suffix.fg = base0A
c.colors.messages.error.bg = base08
c.colors.messages.error.border = base08
c.colors.messages.error.fg = base06
c.colors.messages.info.bg = base00
c.colors.messages.info.fg = base05
c.colors.messages.warning.bg = base09
c.colors.messages.warning.border = base09
c.colors.messages.warning.fg = base06
c.colors.prompts.bg = base00
c.colors.prompts.fg = base05
c.colors.prompts.selected.bg = base0C
c.colors.statusbar.caret.bg = base0E
c.colors.statusbar.caret.fg = base06
c.colors.statusbar.caret.selection.bg = base0E
c.colors.statusbar.caret.selection.fg = base06
c.colors.statusbar.command.bg = base00
c.colors.statusbar.command.fg = base05
c.colors.statusbar.command.private.bg = base00
c.colors.statusbar.command.private.fg = base05
c.colors.statusbar.insert.bg = base0B
c.colors.statusbar.insert.fg = base06
c.colors.statusbar.normal.bg = base00
c.colors.statusbar.normal.fg = base05
c.colors.statusbar.private.bg = base00
c.colors.statusbar.private.fg = base05
c.colors.statusbar.progress.bg = base05
c.colors.statusbar.url.error.fg = base09
c.colors.statusbar.url.fg = base05
c.colors.statusbar.url.hover.fg = base0C
c.colors.statusbar.url.success.http.fg = base05
c.colors.statusbar.url.success.https.fg = base0B
c.colors.statusbar.url.warn.fg = base0A
c.colors.tabs.bar.bg = base00
c.colors.tabs.even.bg = base00
c.colors.tabs.even.fg = base05
c.colors.tabs.odd.bg = base00
c.colors.tabs.odd.fg = base05
c.colors.tabs.selected.even.bg = base02
c.colors.tabs.selected.even.fg = base05
c.colors.tabs.selected.odd.bg = base02
c.colors.tabs.selected.odd.fg = base05

c.hints.border = "1px solid {}".format(base00)

font_size = "{{ fontSize }}"
font_name = "{{ fontName }}"
chinese_font_size = "{{ chineseFontSize }}"
chinese_font_name = "{{ chineseFontName }}"
default_font = "{}pt {}, {}".format(font_size, font_name, chinese_font_name)
c.fonts.monospace = default_font

c.fonts.completion.category = default_font
c.fonts.completion.entry = default_font
c.fonts.debug_console = default_font
c.fonts.downloads = default_font
c.fonts.hints = "bold " + default_font
c.fonts.keyhint = default_font
c.fonts.messages.error = default_font
c.fonts.messages.info = default_font
c.fonts.messages.warning = default_font
c.fonts.prompts = default_font
c.fonts.statusbar = default_font
c.fonts.tabs = default_font

c.fonts.web.family.cursive = "serif"
c.fonts.web.family.fantasy = "serif"
c.fonts.web.family.fixed = "monospace"
c.fonts.web.family.sans_serif = "sans-serif"
c.fonts.web.family.serif = "serif"
c.fonts.web.family.standard = "sans-serif"

c.tabs.show = "multiple"
c.tabs.favicons.show = "never"
c.tabs.indicator.width = 0

c.downloads.location.directory = "~/downloads"

c.content.plugins = True

c.input.insert_mode.auto_load = True

c.zoom.default="80%"

c.content.headers.accept_language = 'zh-TW,en-US,en'
