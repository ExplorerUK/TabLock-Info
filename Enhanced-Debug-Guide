By ticking the **Enhance Debug** checkbox option in TabLock, any messages which you debug will automatically highlight View Debug when logging at level 3.

For example:

`apex_debug.message( 'Hello World',p_level=>3);`

Debugging at level 3 is unsupported and may be removed on a later version of APEX. Therefore Tablock also supports a prefix method of one more more characters.

For example:

`apex_debug.message( '!Hello World');`

In the above case, an exclamation mark (!) is used to denote a custom debug message. When the exclamation mark (!) is configured in Tablock options, this leading character will be stripped off and the resultant message **Hello World** will be displayed. When using this method, ensure your prefix is not used by any other message, internal or otherwise.

By ticking the **Render HTML** checkbox, any HTML that appears in a debug message will be rendered in the View Debug window

For example:

`apex_debug.message( '<img src="https://media.giphy.com/media/olAik8MhYOB9K/giphy.gif">',p_level=>3);`

apex_debug.message( 'Tablock **Enhanced** Debug Guide>',p_level=>3);

_Warning:_ Using the Enhanced JS presents an XSS risk; please proceed only if you are happy to accept this this risk.
