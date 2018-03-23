# The *great* thing about this scope is that if you're also using the vim package,
# an open vim in any iterm2 tab will cause the shortcuts to not work.
Scope.register
  name: 'iterm-scope'
  # optional list of bundle ids (darwin)
  applications: ['com.googlecode.iterm2']

Package.implement { scope: 'iterm-scope' },
  'clipboard:copy': ->
    @key 'w', 'option'
    @delay 0.20

  'clipboard:cut': ->
    @key 'w', 'control'
    @delay 0.20

  'os:undo': ->
    @key '-', 'control shift'

  'selection:way-left': ->
    @key 'home', 'shift'

  'selection:way-right': ->
    @key 'end', 'shift'

  'selection:current-line': ->
    @do 'cursor:way-left'
    @do 'selection:way-right'