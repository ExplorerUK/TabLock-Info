# Enhance Debug

By ticking the **Enhance Debug** checkbox option in TabLock, any messages which you debug will automatically highlight View Debug when following a method below.

NOTE: There is no need to customise the debugger Interactive Report as per the 'Enhanced Debugger' blog here https://explorer.co.uk/enhancing-apex-debugger/

![alt text](https://github.com/ExplorerUK/TabLock-Info/blob/master/tablock-enhanced-debug.PNG?raw=true "Enhanced Debug")

## _Method 1: Debug at Level 3_

`apex_debug.message( 'Hello World',p_level=>3);`

Debugging at level 3 is unsupported and may be removed on a later version of APEX. Therefore Tablock also supports a prefix method of one more more characters.

## _Method 2: Prefix Method_

`apex_debug.message( '!Hello World');`

In the above case, an exclamation mark (!) is used to denote a custom debug message. When the exclamation mark (!) is configured in Tablock options, this leading character will be stripped off and the resultant message **Hello World** will be displayed. When using this method, ensure your prefix is not used by any other message, internal or otherwise.

# Additional Features

Tablock provides addtional features when the **Enhance Debug** checkbox is ticked.

## _1. Alternate  APEX_DEBUG.MESSAGE procedure_

Instead of using the above methods to enable highlighting of debug messages, you may use the **explorer_debug_message** procedure instad of APEX_DEBUG.MESSAGE. Using this procedure removes the requirement for the developer to specify a log level or a prefix.

https://github.com/ExplorerUK/TabLock-Info/blob/master/explorer_debug_message.sql

## _2. Navigation Buttons_

Enabling the **Enhance Debug** checkbox also provides 3 icons
* Scroll to the first developer defined debug message
* Scroll to the top of the page
* Scroll to the bottom of the page.

## _3. Render HTML_

By ticking the **Render HTML** checkbox, any HTML that appears in a debug message will be rendered in the View Debug window

`apex_debug.message( '<img src="https://media.giphy.com/media/olAik8MhYOB9K/giphy.gif">',p_level=>3);`

_Warning:_ Using the Render HTML option presents an XSS risk; please proceed only if you are happy to accept this this risk.
