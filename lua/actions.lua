local actions = {
  change_font_size = {
    details = [[
E.g. change_font_size all +2.0

To setup shortcuts for specific font sizes::

    map kitty_mod+f6 change_font_size all 10.0

To setup shortcuts to change only the current OS window's font size::

    map kitty_mod+f6 change_font_size current 10.0
]]
    },
  clear_selection = {
    details = [[
]]
    },
  clear_terminal = {
    details = [[
E.g. clear_terminal reset active

You can create shortcuts to clear/reset the terminal. For example::

     *  # Reset the terminal
     *  map f1 clear_terminal reset active
     *  # Clear the terminal screen by erasing all contents
     *  map f1 clear_terminal clear active
     *  # Clear the terminal scrollback by erasing it
     *  map f1 clear_terminal scrollback active
     *  # Scroll the contents of the screen into the scrollback
     *  map f1 clear_terminal scroll active
     *  # Clear everything up to the line with the cursor
     *  map f1 clear_terminal to_cursor active
     * Clear up to cursor line::
     * map cmd+k clear_terminal to_cursor active
]]
    },
  close_os_window = {
    details = [[
E.g. map shift+cmd+w close_os_window
]]
    },
  close_other_tabs_in_os_window = {
    details = [[
]]
    },
  close_other_windows_in_tab = {
    details = [[
]]
    },
  close_shared_ssh_connections = {
    details = [[
]]
    },
  close_tab = {
    details = [[
E.g. map cmd+w close_tab
]]
    },
  close_window = {
    details = [[
E.g. map kitty_mod+w close_window
]]
    },
  close_window_with_confirmation = {
    details = [[
]]
    },
  combine = {
    details = [[
You can combine multiple actions to be triggered by a single
shortcut, using the syntax below::

    map key combine <separator> action1 <separator> action2 <separator> action3 ...

For example::

    map kitty_mod+e combine : new_window : next_layout
]]
    },
  copy_and_clear_or_interrupt = {
    details = [[
E.g. map kitty_mod+c copy_and_clear_or_interrupt

There is also a copy_or_interrupt action that can be optionally mapped to Ctrl+c. It will copy only if there is a selection and send an interrupt otherwise. Similarly, copy_and_clear_or_interrupt will copy and clear the selection or send an interrupt if there is no selection.
]]
    },
  copy_ansi_to_clipboard = {
    details = [[
]]
    },
  copy_or_interrupt = {
    details = [[
E.g. map kitty_mod+c copy_or_interrupt

There is also a copy_or_interrupt action that can be optionally mapped to Ctrl+c. It will copy only if there is a selection and send an interrupt otherwise. Similarly, copy_and_clear_or_interrupt will copy and clear the selection or send an interrupt if there is no selection.
]]
    },
  copy_to_buffer = {
    details = [[
]]
    },
  copy_to_clipboard = {
    details = [[
E.g. map kitty_mod+c copy_to_clipboard

There is also a copy_or_interrupt action that can be optionally mapped to Ctrl+c. It will copy only if there is a selection and send an interrupt otherwise. Similarly, copy_and_clear_or_interrupt will copy and clear the selection or send an interrupt if there is no selection.
]]
    },
  create_marker = {
    details = [[
]]
    },
  debug_config = {
    details = [[
E.g. map opt+cmd+,    debug_config

Show details about exactly what configuration kitty is running with and its host environment. Useful for debugging issues.
]]
    },
  detach_tab = {
    details = [[
]]
    },
  detach_window = {
    details = [[
]]
    },
  disable_ligatures_in = {
    details = [[
Choose how you want to handle multi-character ligatures. The default is to always render them.  You can tell kitty to not render them when the cursor is over them by using cursor to make editing easier, or have kitty never render them at all by using always, if you don't like them. The ligature strategy can be set per-window either using the kitty remote control facility or by defining shortcuts for it in kitty.conf, for example::

    map alt+1 disable_ligatures_in active always
    map alt+2 disable_ligatures_in all never
    map alt+3 disable_ligatures_in tab cursor

Note that this refers to programming ligatures, typically implemented using the calt OpenType feature. For disabling general ligatures, use the font_features setting.
]]
    },
  discard_event = {
    details = [[
If you would like kitty to completely ignore a key event, not even sending it to the program running in the terminal, map it to discard_event::

    map kitty_mod+f1 discard_event
]]
    },
  dump_lines_with_attrs = {
    details = [[
]]
    },
  edit_config_file = {
    details = [[
]]
    },
  eighth_window = {
    details = [[
E.g. map cmd+8 eighth_window
]]
    },
  fifth_window = {
    details = [[
E.g. map cmd+5 fifth_window
]]
    },
  first_window = {
    details = [[
E.g. map cmd+1 first_window
]]
    },
  focus_visible_window = {
    details = [[
Visually select focus window

    map kitty_mod+f7 focus_visible_window
]]
    },
  fourth_window = {
    details = [[
E.g. map cmd+4 fourth_window
]]
    },
  goto_layout = {
    details = [[
You can also create shortcuts to switch to specific layouts::

    map ctrl+alt+t goto_layout tall
    map ctrl+alt+s goto_layout stack
]]
    },
  goto_tab = {
    details = [[
You can also create shortcuts to go to specific tabs, with 1 being the first tab, 2 the second tab and -1 being the previously active tab, and any number larger than the last tab being the last tab::

    map ctrl+alt+1 goto_tab 1
    map ctrl+alt+2 goto_tab 2
]]
    },
  input_unicode_character = {
    details = [[
]]
    },
  kitten = {
    details = [[
E.g. map kitty_mod+u kitten unicode_input
]]
    },
  kitty_shell = {
    details = [[
Open the kitty command shell

map kitty_mod+escape kitty_shell window
]]
    },
  last_used_layout = {
    details = [[
Similarly, to switch back to the previous layout::

   map ctrl+alt+p last_used_layout
]]
    },
  launch = {
    details = [[
You can open a new window running an arbitrary program, for example::

    map kitty_mod+y      launch mutt

You can open a new window with the current working directory set to the working directory of the current window using::

    map ctrl+alt+enter    launch --cwd=current

You can open a new window that is allowed to control kitty via the kitty remote control facility by prefixing the command line with @. Any programs running in that window will be allowed to control kitty. For example::

    map ctrl+enter launch --allow-remote-control some_program

You can open a new window next to the currently active window or as the first window, with::

    map ctrl+n launch --location=neighbor some_program
    map ctrl+f launch --location=first some_program
]]
    },
  layout_action = {
    details = [[
]]
    },
  load_config_file = {
    details = [[
Reload kitty.conf, applying any changes since the last time it was loaded. Note that a handful of settings cannot be dynamically changed and require a full restart of kitty.  You can also map a keybinding to load a different config file, for example::

    map f5 load_config /path/to/alternative/kitty.conf

Note that all setting from the original kitty.conf are discarded, in other words the new conf settings *replace* the old ones.
]]
    },
  mouse_click_url = {
    details = [[
]]
    },
  mouse_click_url_or_select = {
    details = [[
]]
    },
  mouse_handle_click = {
    details = [[
Click the link under the mouse or move the cursor

    mouse_map left click ungrabbed mouse_handle_click selection link prompt

First check for a selection and if one exists do nothing. Then check for a link under the mouse cursor and if one exists, click it. Finally check if the click happened at the current shell prompt and if so, move the cursor to the click location. Note that this requires shell-integration to work.
]]
    },
  mouse_select_command_output = {
    details = [[
]]
    },
  mouse_selection = {
    details = [[
]]
    },
  mouse_show_command_output = {
    details = [[
Show clicked command output in pager

    mouse_map ctrl+shift+right press ungrabbed mouse_show_command_output

Requires https://sw.kovidgoyal.net/kitty/shell-integration/ to work
]]
    },
  move_tab_backward = {
    details = [[
move tab backward

    map kitty_mod+, move_tab_backward
]]
    },
  move_tab_forward = {
    details = [[
Move tab forward

    map kitty_mod+. move_tab_forward
]]
    },
  move_window = {
    details = [[
]]
    },
  move_window_backward = {
    details = [[
Move window backward

    map kitty_mod+b move_window_backward
]]
    },
  move_window_forward = {
    details = [[
Move window forward

    map kitty_mod+f move_window_forward
]]
    },
  move_window_to_top = {
    details = [[
Move window to top

    map kitty_mod+` move_window_to_top
]]
    },
  neighboring_window = {
    details = [[
]]
    },
  new_os_window = {
    details = [[
New OS window

    map kitty_mod+n new_os_window
    map cmd+n       new_os_window

Works like new_window, except that it opens a top level OS kitty window. In particular you can use new_os_window_with_cwd to open a window with the current working directory.
]]
    },
  new_os_window_with_cwd = {
    details = [[
New OS window

    map kitty_mod+n new_os_window_with_cwd
    map cmd+n       new_os_window_with_cwd

Works like new_window, except that it opens a top level OS kitty window. In particular you can use new_os_window_with_cwd to open a window with the current working directory.
]]
    },
  new_tab = {
    details = [[
Just as with new_window, you can also pass the name of arbitrary commands to run when using new_tab and use new_tab_with_cwd. Finally, if you want the new tab to open next to the current tab rather than at the end of the tabs list, use::

    map ctrl+t new_tab !neighbor [optional cmd to run]
]]
    },
  new_tab_with_cwd = {
    details = [[
Just as with new_window, you can also pass the name of arbitrary commands to run when using new_tab and use new_tab_with_cwd. Finally, if you want the new tab to open next to the current tab rather than at the end of the tabs list, use::

    map ctrl+t new_tab !neighbor [optional cmd to run]
]]
    },
  new_window = {
    details = [[
New window

    map kitty_mod+enter new_window
    map cmd+enter       new_window

You can open a new window running an arbitrary program, for example::

    map kitty_mod+y      launch mutt

You can open a new window with the current working directory set to the working directory of the current window using::

    map ctrl+alt+enter    launch --cwd=current

You can open a new window that is allowed to control kitty via the kitty remote control facility by prefixing the command line with @. Any programs running in that window will be allowed to control kitty. For example::

    map ctrl+enter launch --allow-remote-control some_program

You can open a new window next to the currently active window or as the first window, with::

    map ctrl+n launch --location=neighbor some_program
    map ctrl+f launch --location=first some_program
]]
    },
  new_window_with_cwd = {
    details = [[
New window with cwd

    map kitty_mod+enter new_window_with_cwd
    map cmd+enter       new_window_with_cwd

You can open a new window running an arbitrary program, for example::

    map kitty_mod+y      launch mutt

You can open a new window with the current working directory set to the working directory of the current window using::

    map ctrl+alt+enter    launch --cwd=current

You can open a new window that is allowed to control kitty via the kitty remote control facility by prefixing the command line with @. Any programs running in that window will be allowed to control kitty. For example::

    map ctrl+enter launch --allow-remote-control some_program

You can open a new window next to the currently active window or as the first window, with::

    map ctrl+n launch --location=neighbor some_program
    map ctrl+f launch --location=first some_program
]]
    },
  next_layout = {
    details = [[
Next layout

    map kitty_mod+l next_layout
]]
    },
  next_tab = {
    details = [[
Next tab

    map kitty_mod+right next_tab
    map shift+cmd+]     next_tab
    map ctrl+tab        next_tab
]]
    },
  next_window = {
    details = [[
Next window

    map kitty_mod+] next_window
]]
    },
  ninth_window = {
    details = [[
E.g. map cmd+9 ninth_window
]]
    },
  no_op = {
    details = [[
You can use the special action no_op to unmap a keyboard shortcut that is assigned in the default configuration::

    map kitty_mod+space no_op
]]
    },
  nth_os_window = {
    details = [[
]]
    },
  nth_window = {
    details = [[
]]
    },
  open_url_with_hints = {
    details = [[
Open URL

    map kitty_mod+e open_url_with_hints

Open a currently visible URL using the keyboard. The program used to open the URL is specified in open_url_with.
]]
    },
  pass_selection_to_program = {
    details = [[
Pass selection to program

    map kitty_mod+o pass_selection_to_program
]]
    },
  paste = {
    details = [[
]]
    },
  paste_from_buffer = {
    details = [[
Copy to clipboard or a private buffer on select (copy_on_select). With this set to clipboard, simply selecting text with the mouse will cause the text to be copied to clipboard. Useful on platforms such as macOS that do not have the concept of primary selections. You can instead specify a name such as a1 to copy to a private kitty buffer instead. Map a shortcut with the paste_from_buffer action to paste from this private buffer. For example::

    map shift+cmd+v paste_from_buffer a1
]]
    },
  paste_from_clipboard = {
    details = [[
Copy to clipboard or a private buffer on select (copy_on_select). With this set to clipboard, simply selecting text with the mouse will cause the text to be copied to clipboard. Useful on platforms such as macOS that do not have the concept of primary selections. You can instead specify a name such as a1 to copy to a private kitty buffer instead. Map a shortcut with the paste_from_buffer action to paste from this private buffer. For example::

    map shift+cmd+v paste_from_clipboard
]]
    },
  paste_from_selection = {
    details = [[
Paste from selection

    map kitty_mod+s  paste_from_selection
    map shift+insert paste_from_selection
]]
    },
  paste_selection = {
    details = [[
Paste from the primary selection even when grabbed

    mouse_map shift+middle release ungrabbed,grabbed paste_selection
]]
    },
  paste_selection_or_clipboard = {
    details = [[
]]
    },
  previous_tab = {
    details = [[
Previous tab

    map kitty_mod+left previous_tab
]]
    },
  previous_window = {
    details = [[
Previous window

    map kitty_mod+[ previous_window
]]
    },
  quit = {
    details = [[
]]
    },
  remote_control = {
    details = [[
]]
    },
  remove_marker = {
    details = [[
]]
    },
  reset_window_sizes = {
    details = [[
]]
    },
  resize_window = {
    details = [[
]]
    },
  scroll_end = {
    details = [[
Scroll to bottom

    map kitty_mod+end scroll_end
]]
    },
  scroll_home = {
    details = [[
Scroll to top

    map kitty_mod+home scroll_home
]]
    },
  scroll_line_down = {
    details = [[
Scroll line down

    map kitty_mod+j scroll_line_down
]]
    },
  scroll_line_up = {
    details = [[
Scroll line up

    map kitty_mod+k scroll_line_up
]]
    },
  scroll_page_down = {
    details = [[
Scroll page down

    map kitty_mod+page_down scroll_page_down
]]
    },
  scroll_page_up = {
    details = [[
Scroll page up

    map kitty_mod+page_up scroll_page_up
]]
    },
  scroll_prompt_to_bottom = {
    details = [[
]]
    },
  scroll_prompt_to_top = {
    details = [[
]]
    },
  scroll_to_mark = {
    details = [[
]]
    },
  scroll_to_prompt = {
    details = [[
Scroll to previous shell prompt

map kitty_mod+z scroll_to_prompt -1
]]
    },
  second_window = {
    details = [[
E.g. map cmd+2 second_window
]]
    },
  select_tab = {
    details = [[
]]
    },
  send_text = {
    details = [[
Send arbitrary text on key presses

E.g. map ctrl+shift+alt+h send_text all Hello World

You can tell kitty to send arbitrary (UTF-8) encoded text to the client program when pressing specified shortcut keys. For example::

    map ctrl+alt+a send_text all Special text

This will send "Special text" when you press the ctrl+alt+a key combination.  The text to be sent is a python string literal so you can use escapes like \x1b to send control codes or \u21fb to send unicode characters (or you can just input the unicode characters directly as UTF-8 text). The first argument to send_text is the keyboard modes in which to activate the shortcut. The possible values are normal or application or kitty or a comma separated combination of them.  The special keyword all means all modes. The modes normal and application refer to the DECCKM cursor key mode for terminals, and kitty refers to the special kitty extended keyboard protocol.

Another example, that outputs a word and then moves the cursor to the start of the line (same as pressing the Home key)::

    map ctrl+alt+a send_text normal Word\x1b[H
    map ctrl+alt+a send_text application Word\x1bOH
]]
    },
  set_background_opacity = {
    details = [[
Increase background opacity

    map kitty_mod+a>m set_background_opacity +0.1

Decrease background opacity

    map kitty_mod+a>l set_background_opacity -0.1
]]
    },
  set_colors = {
    details = [[
]]
    },
  set_tab_title = {
    details = [[
Set tab title

    map kitty_mod+alt+t set_tab_title
]]
    },
  seventh_window = {
    details = [[
E.g. map cmd+7 seventh_window
]]
    },
  show_first_command_output_on_screen = {
    details = [[
You can also define additional shortcuts to get the command output. For example, to get the first command output on screen::

    map f1 show_first_command_output_on_screen
]]
    },
  show_kitty_env_vars = {
    details = [[
]]
    },
  show_last_command_output = {
    details = [[
Browse output of the last shell command in pager

    map kitty_mod+g show_last_command_output
]]
    },
  show_last_visited_command_output = {
    details = [[
To get the command output that was last accessed by a keyboard action or mouse action::

    map f1 show_last_visited_command_output
]]
    },
  show_scrollback = {
    details = [[
Browse scrollback buffer in pager

    map kitty_mod+h show_scrollback
]]
    },
  signal_child = {
    details = [[
]]
    },
  sixth_window = {
    details = [[
E.g. map cmd+6 sixth_window
]]
    },
  start_resizing_window = {
    details = [[
Start resizing window

    map kitty_mod+r start_resizing_window
]]
    },
  swap_with_window = {
    details = [[
Visually swap window with another

    map kitty_mod+f8 swap_with_window
]]
    },
  tenth_window = {
    details = [[
E.g. map cmd+0 tenth_window
]]
    },
  third_window = {
    details = [[
E.g. map cmd+3 third_window
]]
    },
  toggle_fullscreen = {
    details = [[
Toggle fullscreen

    map kitty_mod+f11 toggle_fullscreen
]]
    },
  toggle_layout = {
    details = [[
There is also a toggle layout function that switches to the named layout or back to the previous layout if in the named layout. Useful to temporarily "zoom" the active window by switching to the stack layout::

    map ctrl+alt+z toggle_layout stack
]]
    },
  toggle_macos_secure_keyboard_entry = {
    details = [[
Toggle macOS secure keyboard entry

    map opt+cmd+s toggle_macos_secure_keyboard_entry
]]
    },
  toggle_marker = {
    details = [[
]]
    },
  toggle_maximized = {
    details = [[
Toggle maximized

    map kitty_mod+f10 toggle_maximized
]]
    },
}

return actions
