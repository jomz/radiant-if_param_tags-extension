# If Param Tags

Adds 3 new Radius tags intended to make small hacks a bit easier;

## &lt;r:if/unless param />

Expands only if the param specified in 'name' is present.
If the additional 'matches' attribute is given, the param must match that to expand.

    <r:if_param name="foo" [matches="on"]>Foo: <r:param name="foo" /></r:if_param>

## &lt;r:param />

Renders the param if found.

    <r:param name="foo" />