# Helper Functions
stub = None

# Bind a key to a command for all modes major modes
def mode_bind(key, command, mode=stub):
    for x_mode in ["normal", "insert", "passthrough", "prompt", "yesno", "caret"]:
        config.bind(key, command, mode=x_mode)

# Don't load autoconfig, make session changes volatile
config.load_autoconfig(False)

# Chromium Like Bindings
mode_bind("<f12>",              "devtools")

# Chromium Bindings allowed in all modes
mode_bind("<ctrl+tab>",         "tab-next")
mode_bind("<ctrl+shift+tab>",   "tab-prev")
mode_bind("<ctrl+q>",           "tab-close")

# Backwards in Tab History
mode_bind("<ctrl+left>",        "back")

# Forward in Tab History
mode_bind("<ctrl+right>",       "forward")

# Darkmode Setup

# Prevent blind white flash on tab change
config.set("colors.webpage.bg", "black") 
config.set("colors.webpage.darkmode.enabled", True)
config.set("colors.webpage.preferred_color_scheme", "dark")

# Tab text padding
config.set("tabs.padding", {
        "bottom": 5,
        "top": 5,
        "left": 5,
        "right": 5

        })
config.set("tabs.title.format", "{audio}{current_title}")
config.set("tabs.title.alignment", "center")

# Fonts
config.set("fonts.default_family", "Source Code Pro")
config.set("fonts.default_size", "14px")
config.set("tabs.favicons.show", "never")

# Colors
config.set("colors.tabs.bar.bg", "#303030")

config.set("colors.tabs.even.bg", "#303030")
config.set("colors.tabs.odd.bg", "#303030")

config.set("colors.tabs.selected.odd.bg", "#181818")
config.set("colors.tabs.selected.even.bg", "#181818")

# Search
config.set("url.searchengines", {
    'DEFAULT': 'https://www.google.com/search?q={}',
    'g': 'https://www.google.com/search?q={}',
    'ddg': 'https://duckduckgo.com/?q={}',
    'aw': 'https://wiki.archlinux.org/?search={}',
    'yt': 'https://www.youtube.com/results?search_query={}'})

# General
config.set("scrolling.smooth", True)

config.bind(';e', 'hint all spawn --detach feh python .config/qutebrowser/image_dl.py {hint-url})')

