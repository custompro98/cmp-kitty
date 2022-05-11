local keywords = {
  action_alias = {
    detail = [[
E.g. action_alias launch_tab launch --type=tab --cwd=current

Define aliases to avoid repeating the same options in multiple mappings. Aliases can be defined for any action. Aliases are expanded recursively. For example, the above alias allows you to create mappings to launch a new tab in the current working directory without duplication::

    map f1 launch_tab vim
    map f2 launch_tab emacs

Similarly, to alias kitten invocation::

    action_alias hints kitten hints --hints-offset=0
]]
  },
  active_border_color = {
    detail = [[
E.g. active_border_color #00ff00

The color for the border of the active window. Set this to none to not draw borders around the active window.
]]
  },
  active_tab_background = {
    detail = [[
E.g. active_tab_background #eee
]]
  },
  active_tab_font_style = {
    detail = [[
E.g. active_tab_font_style bold-italic
]]
  },
  active_tab_foreground = {
    detail = [[
E.g. active_tab_foreground #000
]]
  },
  active_tab_title_template = {
    detail = [[
E.g. active_tab_title_template none

Template to use for active tabs, if not specified falls back to tab_title_template.

]]
  },
  adjust_baseline = {
    detail = [[
E.g. adjust_baseline 0

Adjust the vertical alignment of text (the height in the cell at which text is positioned). You can use either numbers, which are interpreted as pixels or a percentages (number followed by %), which are interpreted as the percentage of the line height. A positive value moves the baseline up, and a negative value moves them down. The underline and strikethrough positions are adjusted accordingly.
]]
  },
  adjust_column_width = {
    detail = [[
E.g. adjust_column_width 0

Change the size of each character cell kitty renders. You can use either numbers, which are interpreted as pixels or percentages (number followed by %), which are interpreted as percentages of the unmodified values. You can use negative pixels or percentages less than 100% to reduce sizes (but this might cause rendering artifacts).
]]
  },
  adjust_line_height = {
    detail = [[
E.g. adjust_line_height 0

Change the size of each character cell kitty renders. You can use either numbers, which are interpreted as pixels or percentages (number followed by %), which are interpreted as percentages of the unmodified values. You can use negative pixels or percentages less than 100% to reduce sizes (but this might cause rendering artifacts).
]]
  },
  allow_hyperlinks = {
    detail = [[
E.g. allow_hyperlinks yes

Process hyperlink (OSC 8) escape sequences. If disabled OSC 8 escape sequences are ignored. Otherwise they become clickable links, that you can click by with the mouse or the hints kitten </kittens/hints>. The special value of ``ask`` means that kitty will ask before opening the link when clicked.
]]
  },
  allow_remote_control = {
    detail = [[
E.g. allow_remote_control no

Allow other programs to control kitty. If you turn this on other programs can control all aspects of kitty, including sending text to kitty windows, opening new windows, closing windows, reading the content of windows, etc.  Note that this even works over ssh connections. You can chose to either allow any program running within kitty to control it, with yes or only programs that connect to the socket specified with the kitty --listen-on command line option, if you use the value socket-only. The latter is useful if you want to prevent programs running on a remote computer over ssh from controlling kitty. Reloading the config will not affect this setting.
]]
  },
  background = {
    detail = [[
E.g. background #000000

The background color
]]
  },
  background_image = {
    detail = [[
E.g. background_image none

Path to a background image. Must be in PNG format.
]]
  },
  background_image_layout = {
    detail = [[
E.g. background_image_layout tiled

Whether to tile, scale or clamp the background image. The value can be one of tiled, mirror-tiled, scaled, clamped.
]]
  },
  background_image_linear = {
    detail = [[
E.g. background_image_linear no

When background image is scaled, whether linear interpolation should be used.
]]
  },
  background_opacity = {
    detail = [[
E.g. background_opacity 1.0

The opacity of the background. A number between 0 and 1, where 1 is opaque and 0 is fully transparent.  This will only work if supported by the OS (for instance, when using a compositor under X11). Note that it only sets the background color's opacity in cells that have the same background color as the default terminal background. This is so that things like the status bar in vim, powerline prompts, etc. still look good.  But it means that if you use a color theme with a background color in your editor, it will not be rendered as transparent.  Instead you should change the default background color in your kitty config and not use a background color in the editor color scheme. Or use the escape codes to set the terminals default colors in a shell script to launch your editor.  Be aware that using a value less than 1.0 is a (possibly significant) performance hit.  If you want to dynamically change transparency of windows set dynamic_background_opacity to yes (this is off by default as it has a performance cost). Changing this setting when reloading the config will only work if dynamic_background_opacity was enabled in the original config.
]]
  },
  background_tint = {
    detail = [[
E.g. background_tint 0.0

How much to tint the background image by the background color. The tint is applied only under the text area, not margin/borders. Makes it easier to read the text. Tinting is done using the current background color for each window. This setting applies only if background_opacity is set and transparent windows are supported or background_image is set.
]]
  },
  bell_border_color = {
    detail = [[
E.g. bell_border_color #ff5a00

The color for the border of inactive windows in which a bell has occurred.
]]
  },
  bell_on_tab = {
    detail = [[
E.g. bell_on_tab "🔔 "

Some text or a unicode symbol to show on the tab if a window in the tab that does not have focus has a bell. If you want to use leading or trailing spaces surround the text with quotes. See tab_title_template for how this is rendered.

For backwards compatibility, values of yes, y, true are converted to the default bell symbol and no, n, false, none are converted to the empty string.
]]
  },
  bell_path = {
    detail = [[
E.g. bell_path none

Path to a sound file to play as the bell sound. If set to none, the system default bell sound is used. Must be in a format supported by the operating systems sound API, such as WAV or OGA on Linux (libcanberra) or AIFF, MP3 or WAV on macOS (NSSound)
]]
  },
  bold_font = {
    detail = [[
E.g. bold_font auto

You can specify different fonts for the bold/italic/bold-italic variants. To get a full list of supported fonts use the `kitty +list-fonts` command. By default they are derived automatically, by the OSes font system. When bold_font or bold_italic_font is set to auto on macOS, the priority of bold fonts is semi-bold, bold, heavy. Setting them manually is useful for font families that have many weight variants like Book, Medium, Thick, etc. For example::

    font_family      Operator Mono Book
    bold_font        Operator Mono Medium
    italic_font      Operator Mono Book Italic
    bold_italic_font Operator Mono Medium Italic
]]
  },
  bold_italic_font = {
    detail = [[
E.g. bold_italic_font auto

You can specify different fonts for the bold/italic/bold-italic variants. To get a full list of supported fonts use the `kitty +list-fonts` command. By default they are derived automatically, by the OSes font system. When bold_font or bold_italic_font is set to auto on macOS, the priority of bold fonts is semi-bold, bold, heavy. Setting them manually is useful for font families that have many weight variants like Book, Medium, Thick, etc. For example::

    font_family      Operator Mono Book
    bold_font        Operator Mono Medium
    italic_font      Operator Mono Book Italic
    bold_italic_font Operator Mono Medium Italic
]]
  },
  box_drawing_scale = {
    detail = [[
E.g. box_drawing_scale 0.001, 1, 1.5, 2

Change the sizes of the lines used for the box drawing unicode characters These values are in pts. They will be scaled by the monitor DPI to arrive at a pixel value. There must be four values corresponding to thin, normal, thick, and very thick lines.
]]
  },
  clear_all_mouse_actions = {
    detail = [[
E.g. clear_all_mouse_actions no

You can have kitty remove all mouse actions seen up to this point. Useful, for instance, to remove the default mouse actions.
]]
  },
  clear_all_shortcuts = {
    detail = [[
E.g. clear_all_shortcuts no

You can have kitty remove all shortcut definitions seen up to this point. Useful, for instance, to remove the default shortcuts.
]]
  },
  click_interval = {
    detail = [[
E.g. click_interval -1.0

The interval between successive clicks to detect double/triple clicks (in seconds). Negative numbers will use the system default instead, if available, or fallback to 0.5.
]]
  },
  clipboard_control = {
    detail = [[
E.g. clipboard_control write-clipboard write-primary read-clipboard-ask read-primary-ask

Allow programs running in kitty to read and write from the clipboard. You can control exactly which actions are allowed. The set of possible actions is: write-clipboard read-clipboard write- primary read-primary read-clipboard-ask read-primary-ask. The default is to allow writing to the clipboard and primary selection and to ask for permission when a program tries to read from the clipboard. Note that disabling the read confirmation is a security risk as it means that any program, even one running on a remote server via SSH can read your clipboard. See also clipboard_max_size.
]]
  },
  clipboard_max_size = {
    detail = [[
E.g. clipboard_max_size 64

The maximum size (in MB) of data from programs running in kitty that will be stored for writing to the system clipboard. See also clipboard_control. A value of zero means no size limit is applied.
]]
  },
  close_on_child_death = {
    detail = [[
E.g. close_on_child_death no

Close the window when the child process (shell) exits. If no (the default), the terminal will remain open when the child exits as long as there are still processes outputting to the terminal (for example disowned or backgrounded processes). If yes, the window will close as soon as the child process exits. Note that setting it to yes means that any background processes still using the terminal can fail silently because their stdout/stderr/stdin no longer work.
]]
  },
  color0 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color1 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color10 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color100 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color101 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color102 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color103 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color104 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color105 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color106 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color107 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color108 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color109 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color11 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color110 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color111 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color112 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color113 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color114 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color115 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color116 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color117 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color118 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color119 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color12 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color120 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color121 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color122 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color123 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color124 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color125 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color126 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color127 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color128 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color129 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color13 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color130 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color131 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color132 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color133 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color134 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color135 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color136 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color137 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color138 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color139 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color14 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color140 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color141 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color142 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color143 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color144 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color145 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color146 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color147 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color148 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color149 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color15 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color150 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color151 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color152 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color153 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color154 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color155 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color156 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color157 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color158 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color159 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color16 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color160 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color161 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color162 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color163 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color164 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color165 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color166 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color167 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color168 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color169 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color17 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color170 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color171 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color172 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color173 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color174 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color175 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color176 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color177 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color178 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color179 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color18 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color180 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color181 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color182 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color183 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color184 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color185 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color186 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color187 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color188 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color189 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color19 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color190 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color191 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color192 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color193 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color194 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color195 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color196 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color197 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color198 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color199 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color2 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color20 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color200 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color201 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color202 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color203 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color204 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color205 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color206 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color207 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color208 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color209 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color21 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color210 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color211 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color212 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color213 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color214 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color215 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color216 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color217 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color218 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color219 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color22 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color220 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color221 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color222 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color223 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color224 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color225 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color226 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color227 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color228 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color229 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color23 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color230 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color231 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color232 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color233 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color234 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color235 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color236 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color237 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color238 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color239 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color24 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color240 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color241 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color242 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color243 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color244 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color245 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color246 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color247 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color248 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color249 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color25 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color250 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color251 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color252 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color253 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color254 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color255 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color26 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color27 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color28 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color29 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color3 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color30 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color31 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color32 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color33 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color34 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color35 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color36 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color37 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color38 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color39 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color4 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color40 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color41 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color42 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color43 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color44 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color45 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color46 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color47 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color48 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color49 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color5 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color50 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color51 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color52 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color53 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color54 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color55 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color56 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color57 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color58 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color59 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color6 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color60 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color61 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color62 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color63 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color64 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color65 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color66 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color67 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color68 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color69 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color7 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color70 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color71 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color72 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color73 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color74 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color75 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color76 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color77 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color78 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color79 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color8 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color80 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color81 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color82 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color83 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color84 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color85 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color86 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color87 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color88 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color89 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color9 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color90 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color91 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color92 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color93 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color94 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color95 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color96 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color97 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color98 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  color99 = {
    detail = [[
E.g. colorN #000000

The 256 terminal colors. There are 8 basic colors, each color has a dull and bright version, for the first 16 colors. You can set the remaining 240 colors as color16 to color255.

color0 #000000
color8 #767676
]]
  },
  command_on_bell = {
    detail = [[
E.g. command_on_bell none

Program to run when a bell occurs. The environment variable KITTY_CHILD_CMDLINE can be used to get the program running in the window in which the bell occurred.
]]
  },
  confirm_os_window_close = {
    detail = [[
E.g. confirm_os_window_close -1

Ask for confirmation when closing an OS window or a Tab with at least this number of kitty windows in it by window manager (e.g. clicking the window close button or pressing the Operating system shortcut to close windows) or by the close_tab action. A value of zero disables confirmation. This confirmation also applies to requests to quit the entire application (all OS windows, via the quit action). Negative values are converted to positive ones, however, with https://sw.kovidgoyal.net/kitty/shell-integration/ enabled, using negative values means windows sitting at a shell prompt are not counted, only windows where some command is currently running. Note that if you want confirmation when closing individual windows, you can map the https://sw.kovidgoyal.net/kitty/actions/#close-window-with- confirmation action.
]]
  },
  copy_on_select = {
    detail = [[
E.g. copy_on_select no

Copy to clipboard or a private buffer on select. With this set to clipboard, simply selecting text with the mouse will cause the text to be copied to clipboard. Useful on platforms such as macOS that do not have the concept of primary selections. You can instead specify a name such as a1 to copy to a private kitty buffer instead. Map a shortcut with the paste_from_buffer action to paste from this private buffer. For example::

    map shift+cmd+v paste_from_buffer a1

Note that copying to the clipboard is a security risk, as all programs, including websites open in your browser can read the contents of the system clipboard.
]]
  },
  cursor = {
    detail = [[
E.g. cursor #cccccc

Default cursor color. If set to the special value none the cursor will be rendered with a "reverse video" effect. It's color will be the color of the text in the cell it is over and the text will be rendered with the background color of the cell.  Note that if the program running in the terminal sets a cursor color, this takes precedence. Also, the cursor colors are modified if the cell background and foreground colors have very low contrast.
]]
  },
  cursor_beam_thickness = {
    detail = [[
E.g. cursor_beam_thickness 1.5

Defines the thickness of the beam cursor (in pts).
]]
  },
  cursor_blink_interval = {
    detail = [[
E.g. cursor_blink_interval -1

The interval (in seconds) at which to blink the cursor. Set to zero to disable blinking. Negative values mean use system default. Note that numbers smaller than repaint_delay will be limited to repaint_delay.
]]
  },
  cursor_shape = {
    detail = [[
E.g. cursor_shape block

The cursor shape can be one of (block, beam, underline). Note that when reloading the config this will be changed only if the cursor shape has not been set by the program running in the terminal. This sets the default cursor shape. Applications running in the terminal can override it. In particular, https://sw.kovidgoyal.net/kitty/shell-integration/ in kitty sets the cursor shape to beam at shell prompts. You can avoid this by setting shell_integration to no-cursor.
]]
  },
  cursor_stop_blinking_after = {
    detail = [[
E.g. cursor_stop_blinking_after 15.0

Stop blinking cursor after the specified number of seconds of keyboard inactivity.  Set to zero to never stop blinking.
]]
  },
  cursor_text_color = {
    detail = [[
E.g. cursor_text_color #111111

Choose the color of text under the cursor. If you want it rendered with the background color of the cell underneath instead, use the special keyword: background. Note that if cursor is set to none then this setting is ignored.
]]
  },
  cursor_underline_thickness = {
    detail = [[
E.g. cursor_underline_thickness 2.0

Defines the thickness of the underline cursor (in pts).
]]
  },
  default_pointer_shape = {
    detail = [[
E.g. default_pointer_shape beam

The default shape of the mouse pointer. Valid values are: arrow, beam and hand.
]]
  },
  detect_urls = {
    detail = [[
E.g. detect_urls yes

Detect URLs under the mouse. Detected URLs are highlighted with an underline and the mouse cursor becomes a hand over them. Even if this option is disabled, URLs are still clickable.
]]
  },
  dim_opacity = {
    detail = [[
E.g. dim_opacity 0.75

How much to dim text that has the DIM/FAINT attribute set. One means no dimming and zero means fully dimmed (i.e. invisible).
]]
  },
  disable_ligatures = {
    detail = [[
E.g. disable_ligatures never

Choose how you want to handle multi-character ligatures. The default is to always render them.  You can tell kitty to not render them when the cursor is over them by using cursor to make editing easier, or have kitty never render them at all by using always, if you don't like them. The ligature strategy can be set per-window either using the kitty remote control facility or by defining shortcuts for it in kitty.conf, for example::

    map alt+1 disable_ligatures_in active always
    map alt+2 disable_ligatures_in all never
    map alt+3 disable_ligatures_in tab cursor

Note that this refers to programming ligatures, typically implemented using the calt OpenType feature. For disabling general ligatures, use the font_features setting.
]]
  },
  draw_minimal_borders = {
    detail = [[
E.g. draw_minimal_borders yes

Draw only the minimum borders needed. This means that only the minimum needed borders for inactive windows are drawn. That is only the borders that separate the inactive window from a neighbor. Note that setting a non-zero window margin overrides this and causes all borders to be drawn.
]]
  },
  dynamic_background_opacity = {
    detail = [[
E.g. dynamic_background_opacity no

Allow changing of the background_opacity dynamically, using either keyboard shortcuts (increase_background_opacity and decrease_background_opacity) or the remote control facility. Changing this setting by reloading the config is not supported.
]]
  },
  editor = {
    detail = [[
E.g. editor .

The terminal editor (such as ``vim`` or ``nano``) to use when editing the kitty config file or similar tasks.

The default value of . means to use the environment variables VISUAL and EDITOR in that order. If these variables aren't set, kitty will run your shell (``$SHELL -l -i -c env``) to see if your shell config files set VISUAL or EDITOR. If that doesn't work, kitty will cycle through various known editors (``vim``, ``emacs``, etc) and take the first one that exists on your system.
]]
  },
  enable_audio_bell = {
    detail = [[
E.g. enable_audio_bell yes

Enable/disable the audio bell. Useful in environments that require silence.
]]
  },
  enabled_layouts = {
    detail = [[
E.g. enabled_layouts *

The enabled window layouts. A comma separated list of layout names. The special value all means all layouts. The first listed layout will be used as the startup layout. Default configuration is all layouts in alphabetical order. For a list of available layouts, see the https://sw.kovidgoyal.net/kitty/overview/#layouts.
]]
  },
  env = {
    detail = [[
E.g. env TERM=xterm-kitty

Specify environment variables to set in all child processes. Note that environment variables are expanded recursively, so if you use::

    env MYVAR1=a
    env MYVAR2=${MYVAR1}/${HOME}/b

The value of MYVAR2 will be a/<path to home directory>/b. Using VAR= will set it to the empty string and using just VAR will delete the variable from the child process' environment.
]]
  },
  exe_search_path = {
    detail = [[
E.g. exe_search_path

Control where kitty looks to find programs to run. The default search order is: First search the system wide PATH, then ~/.local/bin and ~/bin. If still not found, the PATH defined in the login shell after sourcing all its startup files is tried. Finally, if present, the PATH in the env option is tried.

This option allows you to prepend, append, or remove paths from this search order. It can be specified multiple times for multiple paths. A simple path will be prepended to the search order. A path that starts with the + sign will be append to the search order, after ~/bin above. A path that starts with the - sign will be removed from the entire search order. For example::

    exe_search_path /some/prepended/path
    exe_search_path +/some/appended/path
    exe_search_path -/some/excluded/path
]]
  },
  file_transfer_confirmation_bypass = {
    detail = [[
E.g. file_transfer_confirmation_bypass

A password, that can be supplied to the file transfer kitten to skip the transfer confirmation prompt. This should only be used when initiating transfers from trusted computers, over trusted networks or encrypted transports, as it allows programs running on the remote machine to read/write to the local filesystem, without permission.
]]
  },
  focus_follows_mouse = {
    detail = [[
E.g. focus_follows_mouse no

Set the active window to the window under the mouse when moving the mouse around.
]]
  },
  font_family = {
    detail = [[
E.g. font_family monospace

You can specify different fonts for the bold/italic/bold-italic variants. To get a full list of supported fonts use the `kitty +list-fonts` command. By default they are derived automatically, by the OSes font system. When bold_font or bold_italic_font is set to auto on macOS, the priority of bold fonts is semi-bold, bold, heavy. Setting them manually is useful for font families that have many weight variants like Book, Medium, Thick, etc. For example::

    font_family      Operator Mono Book
    bold_font        Operator Mono Medium
    italic_font      Operator Mono Book Italic
    bold_italic_font Operator Mono Medium Italic
]]
  },
  font_features = {
    detail = [[
E.g. font_features none

Choose exactly which OpenType features to enable or disable. This is useful as some fonts might have features worthwhile in a terminal. For example, Fira Code Retina includes a discretionary feature, zero, which in that font changes the appearance of the zero (0), to make it more easily distinguishable from Ø. Fira Code Retina also includes other discretionary features known as Stylistic Sets which have the tags ss01 through ss20.

For the exact syntax to use for individual features, see the Harfbuzz documentation <https://harfbuzz.github.io/harfbuzz-hb- common.html#hb-feature-from-string>.

Note that this code is indexed by PostScript name, and not the font family. This allows you to define very precise feature settings; e.g. you can disable a feature in the italic font but not in the regular font.

On Linux, these are read from the FontConfig database first and then this, setting is applied, so they can be configured in a single, central place.

To get the PostScript name for a font, use kitty +list-fonts --psnames:

.. code-block:: sh

    $ kitty +list-fonts --psnames | grep Fira
    Fira Code
    Fira Code Bold (FiraCode-Bold)
    Fira Code Light (FiraCode-Light)
    Fira Code Medium (FiraCode-Medium)
    Fira Code Regular (FiraCode-Regular)
    Fira Code Retina (FiraCode-Retina)

The part in brackets is the PostScript name.

Enable alternate zero and oldstyle numerals::

    font_features FiraCode-Retina +zero +onum

Enable only alternate zero::

    font_features FiraCode-Retina +zero

Disable the normal ligatures, but keep the calt feature which (in this font) breaks up monotony::

    font_features TT2020StyleB-Regular -liga +calt

In conjunction with force_ltr, you may want to disable Arabic shaping entirely, and only look at their isolated forms if they show up in a document. You can do this with e.g.::

    font_features UnifontMedium +isol -medi -fina -init
]]
  },
  font_size = {
    detail = [[
E.g. font_size 11.0

Font size (in pts).
]]
  },
  force_ltr = {
    detail = [[
E.g. force_ltr no

kitty does not support BIDI (bidirectional text), however, for RTL scripts, words are automatically displayed in RTL. That is to say, in an RTL script, the words "HELLO WORLD" display in kitty as "WORLD HELLO", and if you try to select a substring of an RTL- shaped string, you will get the character that would be there had the the string been LTR. For example, assuming the Hebrew word ירושלים, selecting the character that on the screen appears to be ם actually writes into the selection buffer the character י.  kitty's default behavior is useful in conjunction with a filter to reverse the word order, however, if you wish to manipulate RTL glyphs, it can be very challenging to work with, so this option is provided to turn it off. Furthermore, this option can be used with the command line program GNU FriBidi <https://github.com/fribidi/fribidi#executable> to get BIDI support, because it will force kitty to always treat the text as LTR, which FriBidi expects for terminals.
]]
  },
  foreground = {
    detail = [[
E.g. foreground #dddddd

The foreground and background colors.
]]
  },
  hide_window_decorations = {
    detail = [[
E.g. hide_window_decorations no

Hide the window decorations (title-bar and window borders) with yes. On macOS, titlebar-only can be used to only hide the titlebar. Whether this works and exactly what effect it has depends on the window manager/operating system. Note that the effects of changing this setting when reloading config are undefined.
]]
  },
  inactive_border_color = {
    detail = [[
E.g. inactive_border_color #cccccc

The color for the border of inactive windows.
]]
  },
  inactive_tab_background = {
    detail = [[
E.g. inactive_tab_background #999
]]
  },
  inactive_tab_font_style = {
    detail = [[
E.g. inactive_tab_font_style normal
]]
  },
  inactive_tab_foreground = {
    detail = [[
E.g. inactive_tab_foreground #444
]]
  },
  inactive_text_alpha = {
    detail = [[
E.g. inactive_text_alpha 1.0

Fade the text in inactive windows by the specified amount (a number between zero and one, with zero being fully faded).
]]
  },
  initial_window_height = {
    detail = [[
E.g. initial_window_height 400

remember_window_size  yes
initial_window_width  640
initial_window_height 400

If enabled, the window size will be remembered so that new instances of kitty will have the same size as the previous instance. If disabled, the window will initially have size configured by initial_window_width/height, in pixels. You can use a suffix of "c" on the width/height values to have them interpreted as number of cells instead of pixels.
]]
  },
  initial_window_width = {
    detail = [[
E.g. initial_window_width 640

remember_window_size  yes
initial_window_width  640
initial_window_height 400

If enabled, the window size will be remembered so that new instances of kitty will have the same size as the previous instance. If disabled, the window will initially have size configured by initial_window_width/height, in pixels. You can use a suffix of "c" on the width/height values to have them interpreted as number of cells instead of pixels.
]]
  },
  input_delay = {
    detail = [[
E.g. input_delay 3

Delay (in milliseconds) before input from the program running in the terminal is processed. Note that decreasing it will increase responsiveness, but also increase CPU usage and might cause flicker in full screen programs that redraw the entire screen on each loop, because kitty is so fast that partial screen updates will be drawn.
]]
  },
  italic_font = {
    detail = [[
E.g. italic_font      auto

You can specify different fonts for the bold/italic/bold-italic variants. To get a full list of supported fonts use the `kitty +list-fonts` command. By default they are derived automatically, by the OSes font system. When bold_font or bold_italic_font is set to auto on macOS, the priority of bold fonts is semi-bold, bold, heavy. Setting them manually is useful for font families that have many weight variants like Book, Medium, Thick, etc. For example::

    font_family      Operator Mono Book
    bold_font        Operator Mono Medium
    italic_font      Operator Mono Book Italic
    bold_italic_font Operator Mono Medium Italic
]]
  },
  kitten_alias = {
    detail = [[
E.g. kitten_alias hints hints --hints-offset=0

Like action_alias above but, specifically for kittens. Generally, prefer to use action_alias. This option is a legacy version, present for backwards compatibility. It causes all invocations of the aliased kitten to be substituted. So the example above will cause all invocations of the hints kitten to have the --hints- offset=0 option applied.
]]
  },
  linux_display_server = {
    detail = [[
E.g. linux_display_server auto

Choose between Wayland and X11 backends. By default, an appropriate backend based on the system state is chosen automatically. Set it to x11 or wayland to force the choice. Changing this setting by reloading the config is not supported.
]]
  },
  listen_on = {
    detail = [[
E.g. listen_on none

Tell kitty to listen to the specified unix/tcp socket for remote control connections. Note that this will apply to all kitty instances. It can be overridden by the kitty --listen-on command line flag. This option accepts only UNIX sockets, such as unix:${TEMP}/mykitty or (on Linux) unix:@mykitty. Environment variables are expanded. If {kitty_pid} is present then it is replaced by the PID of the kitty process, otherwise the PID of the kitty process is appended to the value, with a hyphen. This option is ignored unless you also set allow_remote_control to enable remote control. See the help for kitty --listen-on for more details. Changing this option by reloading the config is not supported.
]]
  },
  macos_custom_beam_cursor = {
    detail = [[
E.g. macos_custom_beam_cursor no

Enable/disable custom mouse cursor for macOS that is easier to see on both light and dark backgrounds. WARNING: this might make your mouse cursor invisible on dual GPU machines. Changing this setting by reloading the config is not supported.
]]
  },
  macos_hide_from_tasks = {
    detail = [[
E.g. macos_hide_from_tasks no

Hide the kitty window from running tasks (⌘+Tab) on macOS. Changing this setting by reloading the config is not supported.
]]
  },
  macos_menubar_title_max_length = {
    detail = [[
E.g. macos_menubar_title_max_length 0

The maximum number of characters from the window title to show in the global menubar. Values less than one mean there is no maximum.
]]
  },
  macos_option_as_alt = {
    detail = [[
E.g. macos_option_as_alt no

Use the Option key as an Alt key. With this set to no, kitty will use the macOS native Option+Key = unicode character behavior. This will break any Alt+Key keyboard shortcuts in your terminal programs, but you can use the macOS unicode input technique. You can use the values: left, right, or both to use only the left, right or both Option keys as Alt, instead. Note that kitty itself always treats Option the same as Alt. This means you cannot use this setting to configure different kitty shortcuts for Option+Key vs. `Alt+Key. Also, any kitty shortcuts using Option/Alt+Key will take priority, so that any such key presses will not be passed to terminal programs running inside kitty. Changing this setting by reloading the config is not supported.
]]
  },
  macos_quit_when_last_window_closed = {
    detail = [[
E.g. macos_quit_when_last_window_closed no

Have kitty quit when all the top-level windows are closed. By default, kitty will stay running, even with no open windows, as is the expected behavior on macOS.
]]
  },
  macos_show_window_title_in = {
    detail = [[
E.g. macos_show_window_title_in all

Show or hide the window title in the macOS window or menu-bar. A value of window will show the title of the currently active window at the top of the macOS window. A value of menubar will show the title of the currently active window in the macOS menu-bar, making use of otherwise wasted space. all will show the title everywhere and none hides the title in the window and the menu-bar. See :opt`macos_menubar_title_max_length` for how to control the length of the title in the menu bar.
]]
  },
  macos_thicken_font = {
    detail = [[
E.g. macos_thicken_font 0

Draw an extra border around the font with the given width, to increase legibility at small font sizes. For example, a value of 0.75 will result in rendering that looks similar to sub-pixel antialiasing at common font sizes.
]]
  },
  macos_titlebar_color = {
    detail = [[
E.g. macos_titlebar_color system

Change the color of the kitty window's titlebar on macOS. A value of system means to use the default system color, light or dark can also be used to set it explicitly. A value of background means to use the background color of the currently active window and finally you can use an arbitrary color, such as #12af59 or red. WARNING: This option works by using a hack, as there is no proper Cocoa API for it. It sets the background color of the entire window and makes the titlebar transparent. As such it is incompatible with background_opacity. If you want to use both, you are probably better off just hiding the titlebar with hide_window_decorations.
]]
  },
  macos_traditional_fullscreen = {
    detail = [[
E.g. macos_traditional_fullscreen no

Use the traditional full-screen transition, that is faster, but less pretty.
]]
  },
  macos_window_resizable = {
    detail = [[
E.g. macos_window_resizable yes

Disable this if you want kitty top-level (OS) windows to not be resizable on macOS. Changing this setting by reloading the config will only affect newly created windows.
]]
  },
  map = {
    detail = [[
E.g. map kitty_mod+delete clear_terminal reset active
E.g. map cmd+, edit_config_file
]]
  },
  mark1_background = {
    detail = [[
E.g. mark1_background #98d3cb

Color for marks of type 1 (light steel blue).
]]
  },
  mark1_foreground = {
    detail = [[
E.g. mark1_foreground black

Color for marks of type 1.
]]
  },
  mark2_background = {
    detail = [[
E.g. mark2_background #f2dcd3

Color for marks of type 1 (beige).
]]
  },
  mark2_foreground = {
    detail = [[
E.g. mark2_foreground black

Color for marks of type 2.
]]
  },
  mark3_background = {
    detail = [[
E.g. mark3_background #f274bc

Color for marks of type 3 (violet).
]]
  },
  mark3_foreground = {
    detail = [[
E.g. mark3_foreground black

Color for marks of type 3.
]]
  },
  mouse_hide_wait = {
    detail = [[
E.g. mouse_hide_wait 3.0

Hide mouse cursor after the specified number of seconds of the mouse not being used. Set to zero to disable mouse cursor hiding. Set to a negative value to hide the mouse cursor immediately when typing text. Disabled by default on macOS as getting it to work robustly with the ever-changing sea of bugs that is Cocoa is too much effort.
]]
  },
  mouse_map = {
    detail = [[
E.g. mouse_map left click ungrabbed mouse_handle_click selection link prompt

*  First check for a selection and if one exists do nothing. Then
*  check for a link under the mouse cursor and if one exists, click
*  it. Finally check if the click happened at the current shell
*  prompt and if so, move the cursor to the click location. Note
*  that this requires shell-integration to work.

E.g. mouse_map left triplepress ungrabbed mouse_selection line

*  Select the entire line
]]
  },
  narrow_symbols = {
    detail = [[
E.g. narrow_symbols U+E0A0-U+E0A3,U+E0C0-U+E0C7 1

Usually, for Private Use Unicode characters and some symbol/dingbat characters, if the character is followed by one or more spaces, kitty will use those extra cells to render the character larger, if the character in the font has a wide aspect ratio. Using this setting you can force kitty to restrict the specified code points to render in the specified number of cells (defaulting to one cell). Syntax is::

    narrow_symbols codepoints Optionally the number of cells

]]
  },
  open_url_with = {
    detail = [[
E.g. open_url_with default

The program with which to open URLs that are clicked on. The special value default means to use the operating system's default URL handler (open on macOS and xdg-open on Linux).
]]
  },
  paste_actions = {
    detail = [[
E.g. paste_actions quote-urls-at-prompt

A comma separated list of actions to take when pasting text into the terminal. Possibilities are:

quote-urls-at-prompt:
    If the text being pasted is a URL and the cursor is at a shell prompt, automatically quote the URL (needs https://sw.kovidgoyal.net/kitty/shell-integration/).
confirm:
    Confirm the paste if bracketed paste mode is not active or there is more a large amount of text being pasted.
filter:
    Run the filter_paste() function from the file paste-actions.py in the kitty config directory on the pasted text. The text returned by the function will be actually pasted.
]]
  },
  placement_strategy = {
    detail = [[
E.g. placement_strategy center

When the window size is not an exact multiple of the cell size, the cell area of the terminal window will have some extra padding on the sides. You can control how that padding is distributed with this option. Using a value of center means the cell area will be placed centrally. A value of top-left means the padding will be on only the bottom and right edges.
]]
  },
  pointer_shape_when_dragging = {
    detail = [[
E.g. pointer_shape_when_dragging beam

The default shape of the mouse pointer when dragging across text. Valid values are: arrow, beam and hand.
]]
  },
  pointer_shape_when_grabbed = {
    detail = [[
E.g. pointer_shape_when_grabbed arrow

The shape of the mouse pointer when the program running in the terminal grabs the mouse. Valid values are: arrow, beam and hand.
]]
  },
  remember_window_size = {
    detail = [[
E.g. remember_window_size  yes

remember_window_size  yes
initial_window_width  640
initial_window_height 400

If enabled, the window size will be remembered so that new instances of kitty will have the same size as the previous instance. If disabled, the window will initially have size configured by initial_window_width/height, in pixels. You can use a suffix of "c" on the width/height values to have them interpreted as number of cells instead of pixels.
]]
  },
  repaint_delay = {
    detail = [[
E.g. repaint_delay 10

Delay (in milliseconds) between screen updates. Decreasing it, increases frames-per-second (FPS) at the cost of more CPU usage. The default value yields ~100 FPS which is more than sufficient for most uses. Note that to actually achieve 100 FPS you have to either set sync_to_monitor to no or use a monitor with a high refresh rate. Also, to minimize latency when there is pending input to be processed, repaint_delay is ignored.
]]
  },
  resize_debounce_time = {
    detail = [[
E.g. resize_debounce_time 0.1

The time (in seconds) to wait before redrawing the screen when a resize event is received. On platforms such as macOS, where the operating system sends events corresponding to the start and end of a resize, this number is ignored.
]]
  },
  resize_draw_strategy = {
    detail = [[
E.g. resize_draw_strategy static

Choose how kitty draws a window while a resize is in progress. A value of static means draw the current window contents, mostly unchanged. A value of scale means draw the current window contents scaled. A value of blank means draw a blank window. A value of size means show the window size in cells.
]]
  },
  resize_in_steps = {
    detail = [[
E.g. resize_in_steps no

Resize the OS window in steps as large as the cells, instead of with the usual pixel accuracy. Combined with an initial_window_width and initial_window_height in number of cells, this option can be used to keep the margins as small as possible when resizing the OS window. Note that this does not currently work on Wayland.
]]
  },
  scrollback_fill_enlarged_window = {
    detail = [[
E.g. scrollback_fill_enlarged_window no

Fill new space with lines from the scrollback buffer after enlarging a window.
]]
  },
  scrollback_lines = {
    detail = [[
E.g. scrollback_lines 2000

Number of lines of history to keep in memory for scrolling back. Memory is allocated on demand. Negative numbers are (effectively) infinite scrollback. Note that using very large scrollback is not recommended as it can slow down performance of the terminal and also use large amounts of RAM. Instead, consider using scrollback_pager_history_size. Note that on config reload if this is changed it will only affect newly created windows, not existing ones.
]]
  },
  scrollback_pager = {
    detail = [[
E.g. scrollback_pager less --chop-long-lines --RAW-CONTROL-CHARS +INPUT_LINE_NUMBER

Program with which to view scrollback in a new window. The scrollback buffer is passed as STDIN to this program. If you change it, make sure the program you use can handle ANSI escape sequences for colors and text formatting. INPUT_LINE_NUMBER in the command line above will be replaced by an integer representing which line should be at the top of the screen. Similarly CURSOR_LINE and CURSOR_COLUMN will be replaced by the current cursor position or set to 0 if there is no cursor, for example, when showing the last command output.
]]
  },
  scrollback_pager_history_size = {
    detail = [[
E.g. scrollback_pager_history_size 0

Separate scrollback history size, used only for browsing the scrollback buffer (in MB). This separate buffer is not available for interactive scrolling but will be piped to the pager program when viewing scrollback buffer in a separate window. The current implementation stores the data in UTF-8, so approximatively 10000 lines per megabyte at 100 chars per line, for pure ASCII, unformatted text. A value of zero or less disables this feature. The maximum allowed size is 4GB. Note that on config reload if this is changed it will only affect newly created windows, not existing ones.
]]
  },
  select_by_word_characters = {
    detail = [[
E.g. select_by_word_characters @-./_~?&=%+#

Characters considered part of a word when double clicking. In addition to these characters any character that is marked as an alphanumeric character in the unicode database will be matched.
]]
  },
  selection_background = {
    detail = [[
E.g. selection_background #fffacd

The foreground and background colors for text selected with the mouse. Setting both of these to none will cause a "reverse video" effect for selections, where the selection will be the cell text color and the text will become the cell background color. Setting only selection_foreground to none will cause the foreground color to be used unchanged. Note that these colors can be overridden by the program running in the terminal.
]]
  },
  selection_foreground = {
    detail = [[
E.g. selection_foreground #000000

The foreground and background colors for text selected with the mouse. Setting both of these to none will cause a "reverse video" effect for selections, where the selection will be the cell text color and the text will become the cell background color. Setting only selection_foreground to none will cause the foreground color to be used unchanged. Note that these colors can be overridden by the program running in the terminal.
]]
  },
  shell = {
    detail = [[
E.g. shell .

The shell program to execute. The default value of . means to use whatever shell is set as the default shell for the current user. Note that on macOS if you change this, you might need to add --login and --interactive to ensure that the shell starts in interactive mode and reads its startup rc files.
]]
  },
  shell_integration = {
    detail = [[
E.g. shell_integration enabled

Enable shell integration on supported shells. This enables features such as jumping to previous prompts, browsing the output of the previous command in a pager, etc. on supported shells.  Set to ``disabled`` to turn off shell integration, completely. See https://sw.kovidgoyal.net/kitty/shell-integration/ for details.
]]
  },
  single_window_margin_width = {
    detail = [[
E.g. single_window_margin_width -1

The window margin (in pts) to use when only a single window is visible. Negative values will cause the value of window_margin_width to be used instead. A single value sets all four sides. Two values set the vertical and horizontal sides. Three values set top, horizontal and bottom. Four values set top, right, bottom and left.
]]
  },
  startup_session = {
    detail = [[
E.g. startup_session none

Path to a session file to use for all kitty instances. Can be overridden by using the kitty --session command line option for individual instances. See https://sw.kovidgoyal.net/kitty/overview/#startup-sessions in the kitty documentation for details. Note that relative paths are interpreted with respect to the kitty config directory. Environment variables in the path are expanded. Changing this option by reloading the config is not supported.
]]
  },
  strip_trailing_spaces = {
    detail = [[
E.g. strip_trailing_spaces never

Remove spaces at the end of lines when copying to clipboard. A value of smart will do it when using normal selections, but not rectangle selections. always will always do it.
]]
  },
  symbol_map = {
    detail = [[
E.g. symbol_map U+E0A0-U+E0A3,U+E0C0-U+E0C7 PowerlineSymbols

Map the specified unicode codepoints to a particular font. Useful if you need special rendering for some symbols, such as for Powerline. Avoids the need for patched fonts. Each unicode code point is specified in the form U+<code point in hexadecimal>. You can specify multiple code points, separated by commas and ranges separated by hyphens. symbol_map itself can be specified multiple times. Syntax is::

    symbol_map codepoints Font Family Name
]]
  },
  sync_to_monitor = {
    detail = [[
E.g. sync_to_monitor yes

Sync screen updates to the refresh rate of the monitor. This prevents tearing (https://en.wikipedia.org/wiki/Screen_tearing) when scrolling. However, it limits the rendering speed to the refresh rate of your monitor. With a very high speed mouse/high keyboard repeat rate, you may notice some slight input latency. If so, set this to no.
]]
  },
  tab_activity_symbol = {
    detail = [[
E.g. tab_activity_symbol none

Some text or a unicode symbol to show on the tab if a window in the tab that does not have focus has some activity. If you want to use leading or trailing spaces surround the text with quotes. See tab_title_template for how this is rendered.
]]
  },
  tab_bar_align = {
    detail = [[
E.g. tab_bar_align left

The horizontal alignment of the tab bar, can be one of: left, center, or right.
]]
  },
  tab_bar_background = {
    detail = [[
E.g. tab_bar_background none

Background color for the tab bar. Defaults to using the terminal background color.
]]
  },
  tab_bar_edge = {
    detail = [[
E.g. tab_bar_edge bottom

Which edge to show the tab bar on, top or bottom.
]]
  },
  tab_bar_margin_color = {
    detail = [[
E.g. tab_bar_margin_color none

Color for the tab bar margin area. Defaults to using the terminal background color.
]]
  },
  tab_bar_margin_height = {
    detail = [[
E.g. tab_bar_margin_height 0.0 0.0

The margin above and below the tab bar (in pts). The first number is the margin between the edge of the OS Window and the tab bar and the second number is the margin between the tab bar and the contents of the current tab.
]]
  },
  tab_bar_margin_width = {
    detail = [[
E.g. tab_bar_margin_width 0.0

The margin to the left and right of the tab bar (in pts).
]]
  },
  tab_bar_min_tabs = {
    detail = [[
E.g. tab_bar_min_tabs 2

The minimum number of tabs that must exist before the tab bar is shown.
]]
  },
  tab_bar_style = {
    detail = [[
E.g. tab_bar_style fade

The tab bar style, can be one of:

fade
    Each tab's edges fade into the background color (see tab_fade)
slant
    Tabs look like the tabs in a physical file
separator
    Tabs are separated by a configurable separator (see tab_separator)
powerline
    Tabs are shown as a continuous line with "fancy" separators (see tab_powerline_style)
custom
    A user-supplied Python function called draw_tab is loaded from the file tab_bar.py in the kitty config directory. For examples of how to write such a function, see the functions named draw_tab_with_* in kitty's source code: kitty/tab_bar.py. See also this discussion https://github.com/kovidgoyal/kitty/discussions/4447 for examples from kitty users.
hidden
    The tab bar is hidden. If you use this, you might want to create a mapping for the https://sw.kovidgoyal.net/kitty/actions/#select-tab action which presents you with a list of tabs and allows for easy switching to a tab.
]]
  },
  tab_fade = {
    detail = [[
E.g. tab_fade 0.25 0.5 0.75 1

Control how each tab fades into the background when using fade for the tab_bar_style. Each number is an alpha (between zero and one) that controls how much the corresponding cell fades into the background, with zero being no fade and one being full fade. You can change the number of cells used by adding/removing entries to this list.
]]
  },
  tab_powerline_style = {
    detail = [[
E.g. tab_powerline_style angled

The powerline separator style between tabs in the tab bar when using powerline as the tab_bar_style, can be one of: angled, slanted, or round.
]]
  },
  tab_separator = {
    detail = [[
E.g. tab_separator " ┇"

The separator between tabs in the tab bar when using separator as the tab_bar_style.
]]
  },
  tab_switch_strategy = {
    detail = [[
E.g. tab_switch_strategy previous

The algorithm to use when switching to a tab when the current tab is closed. The default of previous will switch to the last used tab. A value of left will switch to the tab to the left of the closed tab. A value of right will switch to the tab to the right of the closed tab. A value of last will switch to the right-most tab.
]]
  },
  tab_title_template = {
    detail = [[
E.g. tab_title_template "{fmt.fg.red}{bell_symbol}{activity_symbol}{fmt.fg.tab}{title}"

A template to render the tab title. The default just renders the title with optional symbols for bell and activity. If you wish to include the tab-index as well, use something like: {index}: {title}. Useful if you have shortcuts mapped for goto_tab N. If you prefer to see the index as a superscript, use {sup.index}. In addition you can use {layout_name} for the current layout name, {num_windows} for the number of windows in the tab and {num_window_groups} for the number of window groups (not counting overlay windows) in the tab. Note that formatting is done by Python's string formatting machinery, so you can use, for instance, {layout_name[:2].upper()} to show only the first two letters of the layout name, upper-cased. If you want to style the text, you can use styling directives, for example: {fmt.fg.red}red{fmt.fg.tab}normal{fmt.bg._00FF00}green bg{fmt.bg.tab}. Similarly, for bold and italic: {fmt.bold}bold{fmt.nobold}normal{fmt.italic}italic{fmt.noitalic}. Note that for backward compatibility, if {bell_symbol} or {activity_symbol} are not present in the template, they are prepended to it.
]]
  },
  term = {
    detail = [[
E.g. term xterm-kitty

The value of the TERM environment variable to set. Changing this can break many terminal programs, only change it if you know what you are doing, not because you read some advice on Stack Overflow to change it. The TERM variable is used by various programs to get information about the capabilities and behavior of the terminal. If you change it, depending on what programs you run, and how different the terminal you are changing it to is, various things from key-presses, to colors, to various advanced features may not work. Changing this option by reloading the config will only affect newly created windows.
]]
  },
  touch_scroll_multiplier = {
    detail = [[
E.g. touch_scroll_multiplier 1.0

Modify the amount scrolled by a touchpad. Note this is only used for high precision scrolling devices on platforms such as macOS and Wayland. Use negative numbers to change scroll direction.
]]
  },
  update_check_interval = {
    detail = [[
E.g. update_check_interval 24

Periodically check if an update to kitty is available. If an update is found a system notification is displayed informing you of the available update. The default is to check every 24 hrs, set to zero to disable. Update checking is only done by the official binary builds. Distro packages or source builds do not do update checking. Changing this option by reloading the config is not supported.
]]
  },
  url_color = {
    detail = [[
E.g. url_color #0087bd
E.g. url_style curly

The color and style for highlighting URLs on mouse-over. url_style can be one of: none, straight, double, curly, dotted, dashed.
]]
  },
  url_excluded_characters = {
    detail = [[
E.g. url_excluded_characters

Additional characters to be disallowed from URLs, when detecting URLs under the mouse cursor. By default, all characters legal in URLs are allowed.
]]
  },
  url_prefixes = {
    detail = [[
E.g. url_prefixes file ftp ftps gemini git gopher http https irc ircs kitty mailto news sftp ssh

The set of URL prefixes to look for when detecting a URL under the mouse cursor.
]]
  },
  url_style = {
    detail = [[
E.g. url_color #0087bd
E.g. url_style curly

The color and style for highlighting URLs on mouse-over. url_style can be one of: none, straight, double, curly, dotted, dashed.
]]
  },
  visual_bell_color = {
    detail = [[
E.g. visual_bell_color none

The color used by visual bell. Set to none will fall back to selection background color. If you feel that the visual bell is too bright, you can set it to a darker color.
]]
  },
  visual_bell_duration = {
    detail = [[
E.g. visual_bell_duration 0.0

Visual bell duration. Flash the screen when a bell occurs for the specified number of seconds. Set to zero to disable.
]]
  },
  visual_window_select_characters = {
    detail = [[
E.g. visual_window_select_characters 1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ

The list of characters to use for visual window selection (for example for selecting a window to focus with focus_visible_window). The value should be a series of unique numbers or alphabets, case insensitive, from the set [0-9A-Z]. Specify your preference as a string of characters.
]]
  },
  watcher = {
    detail = [[
E.g. watcher

Path to python file which will be loaded for https://sw.kovidgoyal.net/kitty/launch/#watchers. Can be specified more than once to load multiple watchers. The watchers will be added to every kitty window. Relative paths are resolved relative to the kitty config directory. Note that reloading the config will only affect windows created after the reload.
]]
  },
  wayland_titlebar_color = {
    detail = [[
E.g. wayland_titlebar_color system

Change the color of the kitty window's titlebar on Wayland systems with client side window decorations such as GNOME. A value of system means to use the default system color, a value of background means to use the background color of the currently active window and finally you can use an arbitrary color, such as #12af59 or red.
]]
  },
  wheel_scroll_min_lines = {
    detail = [[
E.g. wheel_scroll_min_lines 1

The minimum number of lines scrolled by the mouse wheel. The scroll multiplier <wheel_scroll_multiplier> only takes effect after it reaches this number. Note that this is only used for low precision scrolling devices like wheel mice that scroll by very small amounts when using the wheel. With a negative number, the minimum number of lines will always be added.
]]
  },
  wheel_scroll_multiplier = {
    detail = [[
E.g. wheel_scroll_multiplier 5.0

Modify the amount scrolled by the mouse wheel. Note this is only used for low precision scrolling devices, not for high precision scrolling on platforms such as macOS and Wayland. Use negative numbers to change scroll direction. See also wheel_scroll_min_lines.
]]
  },
  window_alert_on_bell = {
    detail = [[
E.g. window_alert_on_bell yes

Request window attention on bell. Makes the dock icon bounce on macOS or the taskbar flash on linux.
]]
  },
  window_border_width = {
    detail = [[
E.g. window_border_width 0.5pt

The width of window borders. Can be either in pixels (px) or pts (pt). Values in pts will be rounded to the nearest number of pixels based on screen resolution. If not specified the unit is assumed to be pts. Note that borders are displayed only when more than one window is visible. They are meant to separate multiple windows.
]]
  },
  window_logo_alpha = {
    detail = [[
E.g. window_logo_alpha 0.5

The amount the logo should be faded into the background. With zero being fully faded and one being fully opaque.
]]
  },
  window_logo_path = {
    detail = [[
E.g. window_logo_path none

Path to a logo image. Must be in PNG format. Relative paths are interpreted relative to the kitty config directory.  The logo is displayed in a corner of every kitty window. The position is controlled by window_logo_position. Individual windows can be configured to have different logos either using the launch function or the remote-control facility.
]]
  },
  window_logo_position = {
    detail = [[
E.g. window_logo_position bottom-right

Where to position the window logo in the window. The value can be one of: top-left, top, top-right, left, center, right, bottom-left, bottom, bottom-right.
]]
  },
  window_margin_width = {
    detail = [[
E.g. window_margin_width 0

The window margin (in pts) (blank area outside the border). A single value sets all four sides. Two values set the vertical and horizontal sides. Three values set top, horizontal and bottom. Four values set top, right, bottom and left.
]]
  },
  window_padding_width = {
    detail = [[
E.g. window_padding_width 0

The window padding (in pts) (blank area between the text and the window border). A single value sets all four sides. Two values set the vertical and horizontal sides. Three values set top, horizontal and bottom. Four values set top, right, bottom and left.
]]
  },
  window_resize_step_cells = {
    detail = [[
E.g. window_resize_step_cells 2
E.g. window_resize_step_lines 2

The step size (in units of cell width/cell height) to use when resizing kitty windows in a layout with the keyboard (start_resizing_window). The cells value is used for horizontal resizing and the lines value for vertical resizing.
]]
  },
  window_resize_step_lines = {
    detail = [[
E.g. window_resize_step_cells 2
E.g. window_resize_step_lines 2

The step size (in units of cell width/cell height) to use when resizing kitty windows in a layout with the keyboard (start_resizing_window). The cells value is used for horizontal resizing and the lines value for vertical resizing.
]]
  },
}

return keywords
