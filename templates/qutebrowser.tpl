# vim: ft=dosini

# Configfile for qutebrowser.
#
# This configfile is parsed by python's configparser in extended
# interpolation mode. The format is very INI-like, so there are
# categories like [general] with "key = value"-pairs.
#
# Note that you shouldn't add your own comments, as this file is
# regenerated every time the config is saved.
#
# Interpolation looks like  ${value}  or  ${section:value} and will be
# replaced by the respective value.
#
# Some settings will expand environment variables. Note that, since
# interpolation is run first, you will need to escape the  $  char as
# described below.
#
# This is the default config, so if you want to remove anything from
# here (as opposed to change/add), for example a key binding, set it to
# an empty value.
#
# You will need to escape the following values:
#   - # at the start of the line (at the first position of the key) (\#)
#   - $ in a value ($$)

[general]
# General/miscellaneous options.
#
# ignore-case (IgnoreCase):
#     Whether to find text on a page case-insensitively.
#         true: Search case-insensitively
#         false: Search case-sensitively
#         smart: Search case-sensitively if there are capital chars
#     Default: smart
#
# startpage (List of String):
#     The default page(s) to open at the start, separated by commas.
#     Default: https://start.duckduckgo.com
#
# yank-ignored-url-parameters (List of String):
#     The URL parameters to strip with :yank url, separated by commas.
#     Default:
#     ref,utm_source,utm_medium,utm_campaign,utm_term,utm_content
#
# default-open-dispatcher (String):
#     The default program used to open downloads. Set to an empty string
#     to use the default internal handler.
#     Any {} in the string will be expanded to the filename, else the
#     filename will be appended.
#     Default:
#
# default-page (FuzzyUrl):
#     The page to open if :open -t/-b/-w is used without URL. Use
#     `about:blank` for a blank page.
#     Default: ${startpage}
#
# auto-search (AutoSearch):
#     Whether to start a search when something else than a URL is
#     entered.
#         naive: Use simple/naive check.
#         dns: Use DNS requests (might be slow!).
#         false: Never search automatically.
#     Default: naive
#
# auto-save-config (Bool):
#     Whether to save the config automatically on quit.
#     Valid values: true, false
#     Default: true
#
# auto-save-interval (Int):
#     How often (in milliseconds) to auto-save config/cookies/etc.
#     Default: 15000
#
# editor (ShellCommand):
#     The editor (and arguments) to use for the `open-editor` command.
#     The arguments get split like in a shell, so you can use `"` or `'`
#     to quote them.
#     `{}` gets replaced by the filename of the file to be edited.
#     Default: gvim -f "{}"
#
# editor-encoding (Encoding):
#     Encoding to use for editor.
#     Default: utf-8
#
# private-browsing (Bool):
#     Do not record visited pages in the history or store web page
#     icons.
#     Valid values: true, false
#     Default: false
#
# developer-extras (Bool):
#     Enable extra tools for Web developers.
#     This needs to be enabled for `:inspector` to work and also adds an
#     _Inspect_ entry to the context menu. For QtWebEngine, see
#     'qutebrowser --help' instead.
#     Valid values: true, false
#     Default: false
#
# print-element-backgrounds (Bool):
#     Whether the background color and images are also drawn when the
#     page is printed.
#     Valid values: true, false
#     Default: true
#
# xss-auditing (Bool):
#     Whether load requests should be monitored for cross-site scripting
#     attempts.
#     Suspicious scripts will be blocked and reported in the inspector's
#     JavaScript console. Enabling this feature might have an impact on
#     performance.
#     Valid values: true, false
#     Default: false
#
# site-specific-quirks (Bool):
#     Enable workarounds for broken sites.
#     Valid values: true, false
#     Default: true
#
# default-encoding (String):
#     Default encoding to use for websites.
#     The encoding must be a string describing an encoding such as
#     _utf-8_, _iso-8859-1_, etc. If left empty a default value will be
#     used.
#     Default:
#
# new-instance-open-target (String):
#     How to open links in an existing instance if a new one is
#     launched.
#         tab: Open a new tab in the existing window and activate the
#     window.
#         tab-bg: Open a new background tab in the existing window and
#     activate the window.
#         tab-silent: Open a new tab in the existing window without
#     activating the window.
#         tab-bg-silent: Open a new background tab in the existing
#     window without activating the window.
#         window: Open in a new window.
#     Default: tab
#
# new-instance-open-target.window (String):
#     Which window to choose when opening links as new tabs.
#         first-opened: Open new tabs in the first (oldest) opened
#     window.
#         last-opened: Open new tabs in the last (newest) opened window.
#         last-focused: Open new tabs in the most recently focused
#     window.
#         last-visible: Open new tabs in the most recently visible
#     window.
#     Default: last-focused
#
# log-javascript-console (String):
#     How to log javascript console messages.
#         none: Don't log messages.
#         debug: Log messages with debug level.
#         info: Log messages with info level.
#     Default: debug
#
# save-session (Bool):
#     Whether to always save the open pages.
#     Valid values: true, false
#     Default: false
#
# session-default-name (SessionName):
#     The name of the session to save by default, or empty for the last
#     loaded session.
#     Default:
#
# url-incdec-segments (FlagList):
#     The URL segments where `:navigate increment/decrement` will search
#     for a number.
#     Valid values: host, path, query, anchor
#     Default: path,query
ignore-case = smart
startpage = https://google.com
yank-ignored-url-parameters = ref,utm_source,utm_medium,utm_campaign,utm_term,utm_content
default-open-dispatcher = 
default-page = ${startpage}
auto-search = naive
auto-save-config = true
auto-save-interval = 15000
editor = gvim -f "{}"
editor-encoding = utf-8
private-browsing = true
developer-extras = true
print-element-backgrounds = true
xss-auditing = false
site-specific-quirks = true
default-encoding = 
new-instance-open-target = tab
new-instance-open-target.window = last-focused
log-javascript-console = debug
save-session = false
session-default-name = 
url-incdec-segments = path,query

[ui]
# General options related to the user interface.
#
# zoom-levels (List of Perc):
#     The available zoom levels, separated by commas.
#     Default:
#     25%,33%,50%,67%,75%,90%,100%,110%,125%,150%,175%,200%,250%,300%,400%,500%
#
# default-zoom (Perc):
#     The default zoom level.
#     Default: 100%
#
# downloads-position (VerticalPosition):
#     Where to show the downloaded files.
#     Valid values: top, bottom
#     Default: top
#
# status-position (VerticalPosition):
#     The position of the status bar.
#     Valid values: top, bottom
#     Default: bottom
#
# message-timeout (Int):
#     Time (in ms) to show messages in the statusbar for.
#     Default: 2000
#
# message-unfocused (Bool):
#     Whether to show messages in unfocused windows.
#     Valid values: true, false
#     Default: false
#
# confirm-quit (ConfirmQuit):
#     Whether to confirm quitting the application.
#         always: Always show a confirmation.
#         multiple-tabs: Show a confirmation if multiple tabs are
#     opened.
#         downloads: Show a confirmation if downloads are running
#         never: Never show a confirmation.
#     Default: never
#
# zoom-text-only (Bool):
#     Whether the zoom factor on a frame applies only to the text or to
#     all content.
#     Valid values: true, false
#     Default: false
#
# frame-flattening (Bool):
#     Whether to  expand each subframe to its contents.
#     This will flatten all the frames to become one scrollable page.
#     Valid values: true, false
#     Default: false
#
# user-stylesheet (File):
#     User stylesheet to use (absolute filename or filename relative to
#     the config directory). Will expand environment variables.
#     Default:
#
# hide-scrollbar (Bool):
#     Hide the main scrollbar.
#     Valid values: true, false
#     Default: true
#
# css-media-type (String):
#     Set the CSS media type.
#     Default:
#
# smooth-scrolling (Bool):
#     Whether to enable smooth scrolling for webpages.
#     Valid values: true, false
#     Default: false
#
# remove-finished-downloads (Int):
#     Number of milliseconds to wait before removing finished downloads.
#     Will not be removed if value is -1.
#     Default: -1
#
# hide-statusbar (Bool):
#     Whether to hide the statusbar unless a message is shown.
#     Valid values: true, false
#     Default: false
#
# statusbar-padding (Padding):
#     Padding for statusbar (top, bottom, left, right).
#     Default: 1,1,0,0
#
# window-title-format (FormatString):
#     The format to use for the window title. The following placeholders
#     are defined:
#     * `{perc}`: The percentage as a string like `[10%]`.
#     * `{perc_raw}`: The raw percentage, e.g. `10`
#     * `{title}`: The title of the current web page
#     * `{title_sep}`: The string ` - ` if a title is set, empty
#     otherwise.
#     * `{id}`: The internal window ID of this window.
#     * `{scroll_pos}`: The page scroll position.
#     * `{host}`: The host of the current web page.
#     * `{backend}`: Either 'webkit' or 'webengine'
#     Default: {perc}{title}{title_sep}qutebrowser
#
# modal-js-dialog (Bool):
#     Use standard JavaScript modal dialog for alert() and confirm()
#     Valid values: true, false
#     Default: false
#
# hide-wayland-decoration (Bool):
#     Hide the window decoration when using wayland (requires restart)
#     Valid values: true, false
#     Default: false
#
# keyhint-blacklist (List of String):
#     Keychains that shouldn't be shown in the keyhint dialog
#     Globs are supported, so ';*' will blacklist all keychainsstarting
#     with ';'. Use '*' to disable keyhints
#     Default:
#
# prompt-radius (Int):
#     The rounding radius for the edges of prompts.
#     Default: 8
#
# prompt-filebrowser (Bool):
#     Show a filebrowser in upload/download prompts.
#     Valid values: true, false
#     Default: true
zoom-levels = 25%,33%,50%,67%,75%,90%,100%,110%,125%,150%,175%,200%,250%,300%,400%,500%
default-zoom = 100%
downloads-position = top
status-position = bottom
message-timeout = 2000
message-unfocused = false
confirm-quit = never
zoom-text-only = false
frame-flattening = false
user-stylesheet = 
hide-scrollbar = true
css-media-type = 
smooth-scrolling = false
remove-finished-downloads = -1
hide-statusbar = false
statusbar-padding = 2,2,0,0
window-title-format = {perc}{title}{title_sep}qutebrowser
modal-js-dialog = false
hide-wayland-decoration = false
keyhint-blacklist = 
prompt-radius = 8
prompt-filebrowser = true

[network]
# Settings related to the network.
#
# do-not-track (Bool):
#     Value to send in the `DNT` header.
#     Valid values: true, false
#     Default: true
#
# accept-language (String):
#     Value to send in the `accept-language` header.
#     Default: en-US,en
#
# referer-header (String):
#     Send the Referer header
#         always: Always send.
#         never: Never send; this is not recommended, as some sites may
#     break.
#         same-domain: Only send for the same domain. This will still
#     protect your privacy, but shouldn't break any sites.
#     Default: same-domain
#
# user-agent (UserAgent):
#     User agent to send. Empty to send the default.
#     Default:
#
# proxy (Proxy):
#     The proxy to use.
#     In addition to the listed values, you can use a `socks://...` or
#     `http://...` URL.
#         system: Use the system wide proxy.
#         none: Don't use any proxy
#     Default: system
#
# proxy-dns-requests (Bool):
#     Whether to send DNS requests over the configured proxy.
#     Valid values: true, false
#     Default: true
#
# ssl-strict (BoolAsk):
#     Whether to validate SSL handshakes.
#     Valid values: true, false, ask
#     Default: ask
#
# dns-prefetch (Bool):
#     Whether to try to pre-fetch DNS entries to speed up browsing.
#     Valid values: true, false
#     Default: true
#
# custom-headers (HeaderDict):
#     Set custom headers for qutebrowser HTTP requests.
#     Default:
#
# netrc-file (File):
#     Set location of a netrc-file for HTTP authentication. If empty,
#     ~/.netrc is used.
#     Default:
do-not-track = true
accept-language = en-US,en
referer-header = same-domain
user-agent = 
proxy = system
proxy-dns-requests = true
ssl-strict = true
dns-prefetch = true
custom-headers = 
netrc-file = 

[completion]
# Options related to completion and command history.
#
# show (String):
#     When to show the autocompletion window.
#         always: Whenever a completion is available.
#         auto: Whenever a completion is requested.
#         never: Never.
#     Default: always
#
# download-path-suggestion (String):
#     What to display in the download filename input.
#         path: Show only the download path.
#         filename: Show only download filename.
#         both: Show download path and filename.
#     Default: path
#
# timestamp-format (TimestampTemplate):
#     How to format timestamps (e.g. for history)
#     Default: %Y-%m-%d
#
# height (PercOrInt):
#     The height of the completion, in px or as percentage of the
#     window.
#     Default: 50%
#
# cmd-history-max-items (Int):
#     How many commands to save in the command history.
#     0: no history / -1: unlimited
#     Default: 100
#
# web-history-max-items (Int):
#     How many URLs to show in the web history.
#     0: no history / -1: unlimited
#     Default: 1000
#
# quick-complete (Bool):
#     Whether to move on to the next part when there's only one possible
#     completion left.
#     Valid values: true, false
#     Default: true
#
# shrink (Bool):
#     Whether to shrink the completion to be smaller than the configured
#     size if there are no scrollbars.
#     Valid values: true, false
#     Default: false
#
# scrollbar-width (Int):
#     Width of the scrollbar in the completion window (in px).
#     Default: 12
#
# scrollbar-padding (Int):
#     Padding of scrollbar handle in completion window (in px).
#     Default: 2
show = always
download-path-suggestion = path
timestamp-format = %Y-%m-%d
height = 50%
cmd-history-max-items = 100
web-history-max-items = 10000
quick-complete = true
shrink = false
scrollbar-width = 12
scrollbar-padding = 2

[input]
# Options related to input modes.
#
# timeout (Int):
#     Timeout (in milliseconds) for ambiguous key bindings.
#     If the current input forms both a complete match and a partial
#     match, the complete match will be executed after this time.
#     Default: 500
#
# partial-timeout (Int):
#     Timeout (in milliseconds) for partially typed key bindings.
#     If the current input forms only partial matches, the keystring
#     will be cleared after this time.
#     Default: 5000
#
# insert-mode-on-plugins (Bool):
#     Whether to switch to insert mode when clicking flash and other
#     plugins.
#     Valid values: true, false
#     Default: false
#
# auto-leave-insert-mode (Bool):
#     Whether to leave insert mode if a non-editable element is clicked.
#     Valid values: true, false
#     Default: true
#
# auto-insert-mode (Bool):
#     Whether to automatically enter insert mode if an editable element
#     is focused after page load.
#     Valid values: true, false
#     Default: false
#
# forward-unbound-keys (String):
#     Whether to forward unbound keys to the webview in normal mode.
#         all: Forward all unbound keys.
#         auto: Forward unbound non-alphanumeric keys.
#         none: Don't forward any keys.
#     Default: auto
#
# spatial-navigation (Bool):
#     Enables or disables the Spatial Navigation feature.
#     Spatial navigation consists in the ability to navigate between
#     focusable elements in a Web page, such as hyperlinks and form
#     controls, by using Left, Right, Up and Down arrow keys. For
#     example, if a user presses the Right key, heuristics determine
#     whether there is an element he might be trying to reach towards
#     the right and which element he probably wants.
#     Valid values: true, false
#     Default: false
#
# links-included-in-focus-chain (Bool):
#     Whether hyperlinks should be included in the keyboard focus chain.
#     Valid values: true, false
#     Default: true
#
# rocker-gestures (Bool):
#     Whether to enable Opera-like mouse rocker gestures. This disables
#     the context menu.
#     Valid values: true, false
#     Default: false
#
# mouse-zoom-divider (Int):
#     How much to divide the mouse wheel movements to translate them
#     into zoom increments.
#     Default: 512
timeout = 500
partial-timeout = 5000
insert-mode-on-plugins = false
auto-leave-insert-mode = true
auto-insert-mode = false
forward-unbound-keys = auto
spatial-navigation = false
links-included-in-focus-chain = true
rocker-gestures = false
mouse-zoom-divider = 512

[tabs]
# Configuration of the tab bar.
#
# background-tabs (Bool):
#     Whether to open new tabs (middleclick/ctrl+click) in background.
#     Valid values: true, false
#     Default: false
#
# select-on-remove (SelectOnRemove):
#     Which tab to select when the focused tab is removed.
#         prev: Select the tab which came before the closed one (left in
#     horizontal, above in vertical).
#         next: Select the tab which came after the closed one (right in
#     horizontal, below in vertical).
#         last-used: Select the previously selected tab.
#     Default: next
#
# new-tab-position (NewTabPosition):
#     How new tabs are positioned.
#         prev: Before the current tab.
#         next: After the current tab.
#         first: At the beginning.
#         last: At the end.
#     Default: next
#
# new-tab-position-explicit (NewTabPosition):
#     How new tabs opened explicitly are positioned.
#         prev: Before the current tab.
#         next: After the current tab.
#         first: At the beginning.
#         last: At the end.
#     Default: last
#
# last-close (String):
#     Behavior when the last tab is closed.
#         ignore: Don't do anything.
#         blank: Load a blank page.
#         startpage: Load the start page.
#         default-page: Load the default page.
#         close: Close the window.
#     Default: ignore
#
# show (String):
#     When to show the tab bar
#         always: Always show the tab bar.
#         never: Always hide the tab bar.
#         multiple: Hide the tab bar if only one tab is open.
#         switching: Show the tab bar when switching tabs.
#     Default: always
#
# show-switching-delay (Int):
#     Time to show the tab bar before hiding it when tabs->show is set
#     to 'switching'.
#     Default: 800
#
# wrap (Bool):
#     Whether to wrap when changing tabs.
#     Valid values: true, false
#     Default: true
#
# movable (Bool):
#     Whether tabs should be movable.
#     Valid values: true, false
#     Default: true
#
# close-mouse-button (String):
#     On which mouse button to close tabs.
#         right: Close tabs on right-click.
#         middle: Close tabs on middle-click.
#         none: Don't close tabs using the mouse.
#     Default: middle
#
# position (Position):
#     The position of the tab bar.
#     Valid values: top, bottom, left, right
#     Default: top
#
# show-favicons (Bool):
#     Whether to show favicons in the tab bar.
#     Valid values: true, false
#     Default: true
#
# width (PercOrInt):
#     The width of the tab bar if it's vertical, in px or as percentage
#     of the window.
#     Default: 20%
#
# indicator-width (Int):
#     Width of the progress indicator (0 to disable).
#     Default: 3
#
# tabs-are-windows (Bool):
#     Whether to open windows instead of tabs.
#     Valid values: true, false
#     Default: false
#
# title-format (FormatString):
#     The format to use for the tab title. The following placeholders
#     are defined:
#     * `{perc}`: The percentage as a string like `[10%]`.
#     * `{perc_raw}`: The raw percentage, e.g. `10`
#     * `{title}`: The title of the current web page
#     * `{title_sep}`: The string ` - ` if a title is set, empty
#     otherwise.
#     * `{index}`: The index of this tab.
#     * `{id}`: The internal tab ID of this tab.
#     * `{scroll_pos}`: The page scroll position.
#     * `{host}`: The host of the current web page.
#     * `{backend}`: Either 'webkit' or 'webengine'
#     Default: {index}: {title}
#
# title-alignment (TextAlignment):
#     Alignment of the text inside of tabs
#     Valid values: left, right, center
#     Default: left
#
# mousewheel-tab-switching (Bool):
#     Switch between tabs using the mouse wheel.
#     Valid values: true, false
#     Default: true
#
# padding (Padding):
#     Padding for tabs (top, bottom, left, right).
#     Default: 0,0,5,5
#
# indicator-padding (Padding):
#     Padding for indicators (top, bottom, left, right).
#     Default: 2,2,0,4
background-tabs = true
select-on-remove = next
new-tab-position = next
new-tab-position-explicit = last
last-close = ignore
show = multiple
show-switching-delay = 800
wrap = true
movable = true
close-mouse-button = middle
position = top
show-favicons = false
width = 20%
indicator-width = 0
tabs-are-windows = false
title-format = {index}: {title}
title-alignment = left
mousewheel-tab-switching = true
padding = 2,2,5,5
indicator-padding = 0,0,0,0

[storage]
# Settings related to cache and storage.
#
# download-directory (Directory):
#     The directory to save downloads to. An empty value selects a
#     sensible os-specific default. Will expand environment variables.
#     Default:
#
# prompt-download-directory (Bool):
#     Whether to prompt the user for the download location.
#     If set to false, 'download-directory' will be used.
#     Valid values: true, false
#     Default: true
#
# remember-download-directory (Bool):
#     Whether to remember the last used download directory.
#     Valid values: true, false
#     Default: true
#
# maximum-pages-in-cache (Int):
#     The maximum number of pages to hold in the global memory page
#     cache.
#     The Page Cache allows for a nicer user experience when navigating
#     forth or back to pages in the forward/back history, by pausing and
#     resuming up to _n_ pages.
#     For more information about the feature, please refer to:
#     http://webkit.org/blog/427/webkit-page-cache-i-the-basics/
#     Default:
#
# object-cache-capacities (List of WebKitBytes):
#     The capacities for the global memory cache for dead objects such
#     as stylesheets or scripts. Syntax: cacheMinDeadCapacity,
#     cacheMaxDead, totalCapacity.
#     The _cacheMinDeadCapacity_ specifies the minimum number of bytes
#     that dead objects should consume when the cache is under pressure.
#     _cacheMaxDead_ is the maximum number of bytes that dead objects
#     should consume when the cache is *not* under pressure.
#     _totalCapacity_ specifies the maximum number of bytes that the
#     cache should consume *overall*.
#     Default:
#
# offline-storage-default-quota (WebKitBytes):
#     Default quota for new offline storage databases.
#     Default:
#
# offline-web-application-cache-quota (WebKitBytes):
#     Quota for the offline web application cache.
#     Default:
#
# offline-storage-database (Bool):
#     Whether support for the HTML 5 offline storage feature is enabled.
#     Valid values: true, false
#     Default: true
#
# offline-web-application-storage (Bool):
#     Whether support for the HTML 5 web application cache feature is
#     enabled.
#     An application cache acts like an HTTP cache in some sense. For
#     documents that use the application cache via JavaScript, the
#     loader engine will first ask the application cache for the
#     contents, before hitting the network.
#     The feature is described in details at:
#     http://dev.w3.org/html5/spec/Overview.html#appcache
#     Valid values: true, false
#     Default: true
#
# local-storage (Bool):
#     Whether support for the HTML 5 local storage feature is enabled.
#     Valid values: true, false
#     Default: true
#
# cache-size (Int):
#     Size of the HTTP network cache.
#     Default: 52428800
download-directory = ~/downloads
prompt-download-directory = true
remember-download-directory = true
maximum-pages-in-cache = 
object-cache-capacities = 
offline-storage-default-quota = 
offline-web-application-cache-quota = 
offline-storage-database = true
offline-web-application-storage = true
local-storage = true
cache-size = 52428800

[content]
# Loaded plugins/scripts and allowed actions.
#
# allow-images (Bool):
#     Whether images are automatically loaded in web pages.
#     Valid values: true, false
#     Default: true
#
# allow-javascript (Bool):
#     Enables or disables the running of JavaScript programs.
#     Valid values: true, false
#     Default: true
#
# allow-plugins (Bool):
#     Enables or disables plugins in Web pages.
#     Qt plugins with a mimetype such as "application/x-qt-plugin" are
#     not affected by this setting.
#     Valid values: true, false
#     Default: false
#
# webgl (Bool):
#     Enables or disables WebGL. For QtWebEngine, Qt/PyQt >= 5.7 is
#     required for this setting.
#     Valid values: true, false
#     Default: false
#
# css-regions (Bool):
#     Enable or disable support for CSS regions.
#     Valid values: true, false
#     Default: true
#
# hyperlink-auditing (Bool):
#     Enable or disable hyperlink auditing (<a ping>).
#     Valid values: true, false
#     Default: false
#
# geolocation (BoolAsk):
#     Allow websites to request geolocations.
#     Valid values: true, false, ask
#     Default: ask
#
# notifications (BoolAsk):
#     Allow websites to show notifications.
#     Valid values: true, false, ask
#     Default: ask
#
# media-capture (BoolAsk):
#     Allow websites to record audio/video.
#     Valid values: true, false, ask
#     Default: ask
#
# javascript-can-open-windows-automatically (Bool):
#     Whether JavaScript programs can open new windows without user
#     interaction.
#     Valid values: true, false
#     Default: false
#
# javascript-can-close-windows (Bool):
#     Whether JavaScript programs can close windows.
#     Valid values: true, false
#     Default: false
#
# javascript-can-access-clipboard (Bool):
#     Whether JavaScript programs can read or write to the clipboard.
#     Valid values: true, false
#     Default: false
#
# ignore-javascript-prompt (Bool):
#     Whether all javascript prompts should be ignored.
#     Valid values: true, false
#     Default: false
#
# ignore-javascript-alert (Bool):
#     Whether all javascript alerts should be ignored.
#     Valid values: true, false
#     Default: false
#
# local-content-can-access-remote-urls (Bool):
#     Whether locally loaded documents are allowed to access remote
#     urls.
#     Valid values: true, false
#     Default: false
#
# local-content-can-access-file-urls (Bool):
#     Whether locally loaded documents are allowed to access other local
#     urls.
#     Valid values: true, false
#     Default: true
#
# cookies-accept (String):
#     Control which cookies to accept.
#         all: Accept all cookies.
#         no-3rdparty: Accept cookies from the same origin only.
#         no-unknown-3rdparty: Accept cookies from the same origin only,
#     unless a cookie is already set for the domain.
#         never: Don't accept cookies at all.
#     Default: no-3rdparty
#
# cookies-store (Bool):
#     Whether to store cookies.
#     Valid values: true, false
#     Default: true
#
# host-block-lists (List of Url):
#     List of URLs of lists which contain hosts to block.
#     The file can be in one of the following formats:
#     - An '/etc/hosts'-like file
#     - One host per line
#     - A zip-file of any of the above, with either only one file, or a
#     file named 'hosts' (with any extension).
#     Default:
#     https://www.malwaredomainlist.com/hostslist/hosts.txt,http://someonewhocares.org/hosts/hosts,http://winhelp2002.mvps.org/hosts.zip,http://malwaredomains.lehigh.edu/files/justdomains.zip,https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&mimetype=plaintext
#
# host-blocking-enabled (Bool):
#     Whether host blocking is enabled.
#     Valid values: true, false
#     Default: true
#
# host-blocking-whitelist (List of String):
#     List of domains that should always be loaded, despite being
#     ad-blocked.
#     Domains may contain * and ? wildcards and are otherwise required
#     to exactly match the requested domain.
#     Local domains are always exempt from hostblocking.
#     Default: piwik.org
#
# enable-pdfjs (Bool):
#     Enable pdf.js to view PDF files in the browser.
#     Note that the files can still be downloaded by clicking the
#     download button in the pdf.js viewer.
#     Valid values: true, false
#     Default: false
allow-images = true
allow-javascript = true
allow-plugins = true
webgl = true
css-regions = true
hyperlink-auditing = false
geolocation = ask
notifications = ask
media-capture = ask
javascript-can-open-windows-automatically = false
javascript-can-close-windows = false
javascript-can-access-clipboard = false
ignore-javascript-prompt = false
ignore-javascript-alert = false
local-content-can-access-remote-urls = false
local-content-can-access-file-urls = true
cookies-accept = no-3rdparty
cookies-store = true
host-block-lists = http://www.malwaredomainlist.com/hostslist/hosts.txt,http://someonewhocares.org/hosts/hosts,http://winhelp2002.mvps.org/hosts.zip,http://malwaredomains.lehigh.edu/files/justdomains.zip,http://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&mimetype=plaintext
host-blocking-enabled = true
host-blocking-whitelist = piwik.org
enable-pdfjs = false

[hints]
# Hinting settings.
#
# border (String):
#     CSS border value for hints.
#     Default: 1px solid #E3BE23
#
# mode (String):
#     Mode to use for hints.
#         number: Use numeric hints.
#         letter: Use the chars in the hints -> chars setting.
#         word: Use hints words based on the html elements and the extra
#     words.
#     Default: letter
#
# chars (UniqueCharString):
#     Chars used for hint strings.
#     Default: asdfghjkl
#
# min-chars (Int):
#     Minimum number of chars used for hint strings.
#     Default: 1
#
# scatter (Bool):
#     Whether to scatter hint key chains (like Vimium) or not (like
#     dwb). Ignored for number hints.
#     Valid values: true, false
#     Default: true
#
# uppercase (Bool):
#     Make chars in hint strings uppercase.
#     Valid values: true, false
#     Default: false
#
# dictionary (File):
#     The dictionary file to be used by the word hints.
#     Default: /usr/share/dict/words
#
# auto-follow (String):
#     Controls when a hint can be automatically followed without the
#     user pressing Enter.
#         always: Auto-follow whenever there is only a single hint on a
#     page.
#         unique-match: Auto-follow whenever there is a unique non-empty
#     match in either the hint string (word mode) or filter (number
#     mode).
#         full-match: Follow the hint when the user typed the whole hint
#     (letter, word or number mode) or the element's text (only in
#     number mode).
#         never: The user will always need to press Enter to follow a
#     hint.
#     Default: unique-match
#
# auto-follow-timeout (Int):
#     A timeout (in milliseconds) to inhibit normal-mode key bindings
#     after a successful auto-follow.
#     Default: 0
#
# next-regexes (List of Regex):
#     A comma-separated list of regexes to use for 'next' links.
#     Default:
#     \bnext\b,\bmore\b,\bnewer\b,\b[>→≫]\b,\b(>>|»)\b,\bcontinue\b
#
# prev-regexes (List of Regex):
#     A comma-separated list of regexes to use for 'prev' links.
#     Default: \bprev(ious)?\b,\bback\b,\bolder\b,\b[<←≪]\b,\b(<<|«)\b
#
# find-implementation (String):
#     Which implementation to use to find elements to hint.
#         javascript: Better but slower
#         python: Slightly worse but faster
#     Default: python
#
# hide-unmatched-rapid-hints (Bool):
#     Controls hiding unmatched hints in rapid mode.
#     Valid values: true, false
#     Default: true
border = 1px solid ${colors:completion.bg}
mode = letter
chars = asdfghjkl
min-chars = 1
scatter = true
uppercase = false
dictionary = /usr/share/dict/words
auto-follow = unique-match
auto-follow-timeout = 0
next-regexes = \bnext\b,\bmore\b,\bnewer\b,\b[>→≫]\b,\b(>>|»)\b,\bcontinue\b
prev-regexes = \bprev(ious)?\b,\bback\b,\bolder\b,\b[<←≪]\b,\b(<<|«)\b
find-implementation = javascript
hide-unmatched-rapid-hints = true

[searchengines]
# Definitions of search engines which can be used via the address bar.
# The searchengine named `DEFAULT` is used when `general -> auto-search`
# is true and something else than a URL was entered to be opened. Other
# search engines can be used by prepending the search engine name to the
# search term, e.g. `:open google qutebrowser`. The string `{}` will be
# signs.
DEFAULT = https://google.com/search?q={}

[aliases]
# Aliases for commands.
# By default, no aliases are defined. Example which adds a new command
# `:qtb` to open qutebrowsers website:
# `qtb = open https://www.qutebrowser.org/`

[colors]
# Colors used in the UI.
# A value can be in one of the following format:
#  * `#RGB`/`#RRGGBB`/`#RRRGGGBBB`/`#RRRRGGGGBBBB`
#  * An SVG color name as specified in http://www.w3.org/TR/SVG/types.html#ColorKeywords[the W3C specification].
#  * transparent (no color)
#  * `rgb(r, g, b)` / `rgba(r, g, b, a)` (values 0-255 or percentages)
#  * `hsv(h, s, v)` / `hsva(h, s, v, a)` (values 0-255, hue 0-359)
#  * A gradient as explained in http://doc.qt.io/qt-5/stylesheet-reference.html#list-of-property-types[the Qt documentation] under ``Gradient''.
# A *.system value determines the color system to use for color
# interpolation between similarly-named *.start and *.stop entries,
# regardless of how they are defined in the options. Valid values are
# 'rgb', 'hsv', and 'hsl'.
# The `hints.*` values are a special case as they're real CSS colors, not Qt-CSS colors. There, for a gradient, you need to use `-webkit-gradient`, see https://www.webkit.org/blog/175/introducing-css-gradients/[the WebKit documentation].
#
# completion.fg (QtColor):
#     Text color of the completion widget.
#     Default: white
#
# completion.bg (QssColor):
#     Background color of the completion widget.
#     Default: #333333
#
# completion.alternate-bg (QssColor):
#     Alternating background color of the completion widget.
#     Default: #444444
#
# completion.category.fg (QtColor):
#     Foreground color of completion widget category headers.
#     Default: white
#
# completion.category.bg (QssColor):
#     Background color of the completion widget category headers.
#     Default: qlineargradient(x1:0, y1:0, x2:0, y2:1, stop:0 #888888,
#     stop:1 #505050)
#
# completion.category.border.top (QssColor):
#     Top border color of the completion widget category headers.
#     Default: black
#
# completion.category.border.bottom (QssColor):
#     Bottom border color of the completion widget category headers.
#     Default: ${completion.category.border.top}
#
# completion.item.selected.fg (QtColor):
#     Foreground color of the selected completion item.
#     Default: black
#
# completion.item.selected.bg (QssColor):
#     Background color of the selected completion item.
#     Default: #e8c000
#
# completion.item.selected.border.top (QssColor):
#     Top border color of the completion widget category headers.
#     Default: #bbbb00
#
# completion.item.selected.border.bottom (QssColor):
#     Bottom border color of the selected completion item.
#     Default: ${completion.item.selected.border.top}
#
# completion.match.fg (QssColor):
#     Foreground color of the matched text in the completion.
#     Default: #ff4444
#
# completion.scrollbar.fg (QssColor):
#     Color of the scrollbar handle in completion view.
#     Default: ${completion.fg}
#
# completion.scrollbar.bg (QssColor):
#     Color of the scrollbar in completion view
#     Default: ${completion.bg}
#
# statusbar.fg (QssColor):
#     Foreground color of the statusbar.
#     Default: white
#
# statusbar.bg (QssColor):
#     Background color of the statusbar.
#     Default: black
#
# statusbar.fg.insert (QssColor):
#     Foreground color of the statusbar in insert mode.
#     Default: ${statusbar.fg}
#
# statusbar.bg.insert (QssColor):
#     Background color of the statusbar in insert mode.
#     Default: darkgreen
#
# statusbar.fg.command (QssColor):
#     Foreground color of the statusbar in command mode.
#     Default: ${statusbar.fg}
#
# statusbar.bg.command (QssColor):
#     Background color of the statusbar in command mode.
#     Default: ${statusbar.bg}
#
# statusbar.fg.caret (QssColor):
#     Foreground color of the statusbar in caret mode.
#     Default: ${statusbar.fg}
#
# statusbar.bg.caret (QssColor):
#     Background color of the statusbar in caret mode.
#     Default: purple
#
# statusbar.fg.caret-selection (QssColor):
#     Foreground color of the statusbar in caret mode with a selection
#     Default: ${statusbar.fg}
#
# statusbar.bg.caret-selection (QssColor):
#     Background color of the statusbar in caret mode with a selection
#     Default: #a12dff
#
# statusbar.progress.bg (QssColor):
#     Background color of the progress bar.
#     Default: white
#
# statusbar.url.fg (QssColor):
#     Default foreground color of the URL in the statusbar.
#     Default: ${statusbar.fg}
#
# statusbar.url.fg.success (QssColor):
#     Foreground color of the URL in the statusbar on successful load
#     (http).
#     Default: white
#
# statusbar.url.fg.success.https (QssColor):
#     Foreground color of the URL in the statusbar on successful load
#     (https).
#     Default: lime
#
# statusbar.url.fg.error (QssColor):
#     Foreground color of the URL in the statusbar on error.
#     Default: orange
#
# statusbar.url.fg.warn (QssColor):
#     Foreground color of the URL in the statusbar when there's a
#     warning.
#     Default: yellow
#
# statusbar.url.fg.hover (QssColor):
#     Foreground color of the URL in the statusbar for hovered links.
#     Default: aqua
#
# tabs.fg.odd (QtColor):
#     Foreground color of unselected odd tabs.
#     Default: white
#
# tabs.bg.odd (QtColor):
#     Background color of unselected odd tabs.
#     Default: grey
#
# tabs.fg.even (QtColor):
#     Foreground color of unselected even tabs.
#     Default: white
#
# tabs.bg.even (QtColor):
#     Background color of unselected even tabs.
#     Default: darkgrey
#
# tabs.fg.selected.odd (QtColor):
#     Foreground color of selected odd tabs.
#     Default: white
#
# tabs.bg.selected.odd (QtColor):
#     Background color of selected odd tabs.
#     Default: black
#
# tabs.fg.selected.even (QtColor):
#     Foreground color of selected even tabs.
#     Default: ${tabs.fg.selected.odd}
#
# tabs.bg.selected.even (QtColor):
#     Background color of selected even tabs.
#     Default: ${tabs.bg.selected.odd}
#
# tabs.bg.bar (QtColor):
#     Background color of the tab bar.
#     Default: #555555
#
# tabs.indicator.start (QtColor):
#     Color gradient start for the tab indicator.
#     Default: #0000aa
#
# tabs.indicator.stop (QtColor):
#     Color gradient end for the tab indicator.
#     Default: #00aa00
#
# tabs.indicator.error (QtColor):
#     Color for the tab indicator on errors..
#     Default: #ff0000
#
# tabs.indicator.system (ColorSystem):
#     Color gradient interpolation system for the tab indicator.
#         rgb: Interpolate in the RGB color system.
#         hsv: Interpolate in the HSV color system.
#         hsl: Interpolate in the HSL color system.
#         none: Don't show a gradient.
#     Default: rgb
#
# hints.fg (QssColor):
#     Font color for hints.
#     Default: black
#
# hints.bg (QssColor):
#     Background color for hints. Note that you can use a `rgba(...)`
#     value for transparency.
#     Default: qlineargradient(x1:0, y1:0, x2:0, y2:1, stop:0 rgba(255,
#     247, 133, 0.8), stop:1 rgba(255, 197, 66, 0.8))
#
# hints.fg.match (QssColor):
#     Font color for the matched part of hints.
#     Default: green
#
# downloads.bg.bar (QssColor):
#     Background color for the download bar.
#     Default: black
#
# downloads.fg.start (QtColor):
#     Color gradient start for download text.
#     Default: white
#
# downloads.bg.start (QtColor):
#     Color gradient start for download backgrounds.
#     Default: #0000aa
#
# downloads.fg.stop (QtColor):
#     Color gradient end for download text.
#     Default: ${downloads.fg.start}
#
# downloads.bg.stop (QtColor):
#     Color gradient stop for download backgrounds.
#     Default: #00aa00
#
# downloads.fg.system (ColorSystem):
#     Color gradient interpolation system for download text.
#         rgb: Interpolate in the RGB color system.
#         hsv: Interpolate in the HSV color system.
#         hsl: Interpolate in the HSL color system.
#         none: Don't show a gradient.
#     Default: rgb
#
# downloads.bg.system (ColorSystem):
#     Color gradient interpolation system for download backgrounds.
#         rgb: Interpolate in the RGB color system.
#         hsv: Interpolate in the HSV color system.
#         hsl: Interpolate in the HSL color system.
#         none: Don't show a gradient.
#     Default: rgb
#
# downloads.fg.error (QtColor):
#     Foreground color for downloads with errors.
#     Default: white
#
# downloads.bg.error (QtColor):
#     Background color for downloads with errors.
#     Default: red
#
# webpage.bg (QtColor):
#     Background color for webpages if unset (or empty to use the
#     theme's color)
#     Default: white
#
# keyhint.fg (QssColor):
#     Text color for the keyhint widget.
#     Default: #FFFFFF
#
# keyhint.fg.suffix (CssColor):
#     Highlight color for keys to complete the current keychain
#     Default: #FFFF00
#
# keyhint.bg (QssColor):
#     Background color of the keyhint widget.
#     Default: rgba(0, 0, 0, 80%)
#
# messages.fg.error (QssColor):
#     Foreground color of an error message.
#     Default: white
#
# messages.bg.error (QssColor):
#     Background color of an error message.
#     Default: red
#
# messages.border.error (QssColor):
#     Border color of an error message.
#     Default: #bb0000
#
# messages.fg.warning (QssColor):
#     Foreground color a warning message.
#     Default: white
#
# messages.bg.warning (QssColor):
#     Background color of a warning message.
#     Default: darkorange
#
# messages.border.warning (QssColor):
#     Border color of an error message.
#     Default: #d47300
#
# messages.fg.info (QssColor):
#     Foreground color an info message.
#     Default: white
#
# messages.bg.info (QssColor):
#     Background color of an info message.
#     Default: black
#
# messages.border.info (QssColor):
#     Border color of an info message.
#     Default: #333333
#
# prompts.fg (QssColor):
#     Foreground color for prompts.
#     Default: white
#
# prompts.bg (QssColor):
#     Background color for prompts.
#     Default: darkblue
#
# prompts.selected.bg (QssColor):
#     Background color for the selected item in filename prompts.
#     Default: #308cc6
completion.fg = #{{ base05 }}
completion.bg = #{{ base00 }}
completion.alternate-bg = #{{ base01 }}
completion.category.fg = #{{ base04 }}
completion.category.bg = #{{ base01 }}
completion.category.border.top = ${completion.category.bg}
completion.category.border.bottom = ${completion.category.border.top}
completion.item.selected.fg = #{{ base06 }}
completion.item.selected.bg = #{{ base02 }}
completion.item.selected.border.top = ${completion.item.selected.bg}
completion.item.selected.border.bottom = ${completion.item.selected.border.top}
completion.match.fg = #{{ base0A }}
completion.scrollbar.fg = ${completion.fg}
completion.scrollbar.bg = ${completion.bg}
statusbar.fg = ${completion.fg}
statusbar.bg = #{{ base00 }}
statusbar.bg.private = #{{ base00 }}
statusbar.fg.insert = ${completion.bg}
statusbar.bg.insert = ${statusbar.progress.bg}
statusbar.fg.command = ${statusbar.fg}
statusbar.bg.command = ${statusbar.bg}
statusbar.fg.caret = ${statusbar.fg}
statusbar.bg.caret = #{{ base0B }}
statusbar.fg.caret-selection = ${statusbar.fg}
statusbar.bg.caret-selection = #{{ base0C }}
statusbar.progress.bg = #{{ base0D }}
statusbar.url.fg = ${statusbar.fg}
statusbar.url.fg.success = ${statusbar.fg}
statusbar.url.fg.success.https = ${statusbar.fg}
statusbar.url.fg.error = ${statusbar.fg}
statusbar.url.fg.warn = ${statusbar.fg}
statusbar.url.fg.hover = ${statusbar.fg}
tabs.fg.odd = #{{ base05 }}
tabs.bg.odd = #{{ base00 }}
tabs.fg.even = #{{ base05 }}
tabs.bg.even = #{{ base00 }}
tabs.fg.selected.odd = #{{ base06 }}
tabs.bg.selected.odd = #{{ base02 }}
tabs.fg.selected.even = ${tabs.fg.selected.odd}
tabs.bg.selected.even = ${tabs.bg.selected.odd}
tabs.bg.bar = #{{ base00 }}
tabs.indicator.start = ${tabs.bg.even}
tabs.indicator.stop = ${tabs.bg.even}
tabs.indicator.error = ${tabs.bg.even}
tabs.indicator.system = rgb
hints.fg = ${completion.fg}
hints.bg = ${completion.bg}
hints.fg.match = ${completion.match.fg}
downloads.bg.bar = ${completion.bg}
downloads.fg.start = ${completion.fg}
downloads.bg.start = #{{ base0F }}
downloads.fg.stop = ${downloads.fg.start}
downloads.bg.stop = #{{ base0B }}
downloads.fg.system = rgb
downloads.bg.system = rgb
downloads.fg.error = ${completion.bg}
downloads.bg.error = ${messages.bg.error}
webpage.bg = #ffffff
keyhint.fg = ${completion.fg}
keyhint.fg.suffix = ${completion.fg}
keyhint.bg = ${completion.bg}
messages.fg.error = ${completion.bg}
messages.bg.error = #{{ base08 }}
messages.border.error = ${messages.bg.error}
messages.fg.warning = ${completion.bg}
messages.bg.warning = #{{ base09 }}
messages.border.warning = ${messages.bg.warning}
messages.fg.info = ${completion.fg}
messages.bg.info = ${completion.bg}
messages.border.info = ${completion.bg}
prompts.fg = ${statusbar.fg}
prompts.bg = ${statusbar.bg}
prompts.selected.bg = ${completion.item.selected.bg}

[fonts]
# Fonts used for the UI, with optional style/weight/size.
#  * Style: `normal`/`italic`/`oblique`
#  * Weight: `normal`, `bold`, `100`..`900`
#  * Size: _number_ `px`/`pt`
#
# _monospace (Font):
#     Default monospace fonts.
#     Default: Terminus, Monospace, "DejaVu Sans Mono", Monaco,
#     "Bitstream Vera Sans Mono", "Andale Mono", "Courier New", Courier,
#     "Liberation Mono", monospace, Fixed, Consolas, Terminal
#
# completion (Font):
#     Font used in the completion widget.
#     Default: 8pt ${_monospace}
#
# completion.category (Font):
#     Font used in the completion categories.
#     Default: bold ${completion}
#
# tabbar (QtFont):
#     Font used in the tab bar.
#     Default: 8pt ${_monospace}
#
# statusbar (Font):
#     Font used in the statusbar.
#     Default: 8pt ${_monospace}
#
# downloads (Font):
#     Font used for the downloadbar.
#     Default: 8pt ${_monospace}
#
# hints (Font):
#     Font used for the hints.
#     Default: bold 13px ${_monospace}
#
# debug-console (QtFont):
#     Font used for the debugging console.
#     Default: 8pt ${_monospace}
#
# web-family-standard (FontFamily):
#     Font family for standard fonts.
#     Default:
#
# web-family-fixed (FontFamily):
#     Font family for fixed fonts.
#     Default:
#
# web-family-serif (FontFamily):
#     Font family for serif fonts.
#     Default:
#
# web-family-sans-serif (FontFamily):
#     Font family for sans-serif fonts.
#     Default:
#
# web-family-cursive (FontFamily):
#     Font family for cursive fonts.
#     Default:
#
# web-family-fantasy (FontFamily):
#     Font family for fantasy fonts.
#     Default:
#
# web-size-minimum (Int):
#     The hard minimum font size.
#     Default:
#
# web-size-minimum-logical (Int):
#     The minimum logical font size that is applied when zooming out.
#     Default:
#
# web-size-default (Int):
#     The default font size for regular text.
#     Default:
#
# web-size-default-fixed (Int):
#     The default font size for fixed-pitch text.
#     Default:
#
# keyhint (Font):
#     Font used in the keyhint widget.
#     Default: 8pt ${_monospace}
#
# messages.error (Font):
#     Font used for error messages.
#     Default: 8pt ${_monospace}
#
# messages.warning (Font):
#     Font used for warning messages.
#     Default: 8pt ${_monospace}
#
# messages.info (Font):
#     Font used for info messages.
#     Default: 8pt ${_monospace}
#
# prompts (Font):
#     Font used for prompts.
#     Default: 8pt sans-serif
_monospace = {{fontSize}}pt {{fontName}}, WenQuanYi WenQuanYi Bitmap Song
completion = ${_monospace}
completion.category = bold ${completion}
tabbar = ${_monospace}
statusbar = ${_monospace}
downloads = ${_monospace}
hints = bold ${_monospace}
debug-console = ${_monospace}
web-family-standard = sans-serif
web-family-fixed = 
web-family-serif = 
web-family-sans-serif = sans-serif
web-family-cursive = 
web-family-fantasy = 
web-size-minimum = 
web-size-minimum-logical = 
web-size-default = 
web-size-default-fixed = 
keyhint = ${_monospace}
messages.error = ${_monospace}
messages.warning = ${_monospace}
messages.info = ${_monospace}
prompts = ${_monospace}