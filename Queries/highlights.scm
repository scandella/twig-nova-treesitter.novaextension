; === Twig Tree-sitter Highlighting ===

; Comments
(comment) @comment

; Twig tags and keywords
(keyword) @keyword
(tag) @tag.name
(conditional) @keyword
(repeat) @keyword
(method) @function
(name) @identifier

; Statement types
(apply_statement) @keyword
(autoescape_statement) @keyword  
(block_statement) @keyword
(cache_statement) @keyword
(extends_statement) @keyword
(verbatim_statement) @keyword

; Craft CMS JS/CSS blocks
(js_block) @tag.name
(css_block) @tag.name
(js_content) @text
(css_content) @text

; Variables and identifiers
(variable) @identifier

; Filters - use function capture for consistent styling
(filter_identifier) @identifier.function

; Functions
(function_identifier) @function
(test) @function

; Attributes
(attribute) @tag.attribute.name

; Literals
(string) @string
(interpolated_string) @string
(number) @value.number
(boolean) @value.boolean
(null) @value.null

; Twig delimiters
[
    "{{"
    "}}"
    "{{-"
    "-}}"
    "{{~"
    "~}}"
] @tag.bracket

[
    "{%"
    "%}"
    "{%-"
    "-%}"
    "{%~"
    "~%}"
] @tag.bracket

; Operators and punctuation
(operator) @operator
(binary_operator) @operator
"|" @operator

[
    ","
    "."
    "?"
    ":"
    "="
] @operator

[
    "("
    ")"
    "["
    "]"
    "{"
    "}"
] @bracket

; Binary operators as text literals
[
    "and" "or" "not" "in" "is" "is not"
    "==" "!=" "<" ">" "<=" ">="
    "+" "-" "*" "/" "//" "%" "**"
    "~" "??" "?:" ".."
] @operator

; Try to capture the entire filter expression
(filter) @method

; Twig standard filters
((filter_identifier) @identifier.function
  (#match? @identifier.function "^(abs|batch|capitalize|column|convert_encoding|country_name|currency_name|data_uri|date|date_modify|default|escape|filter|first|format|html_to_markdown|inky_to_html|inline_css|join|json_encode|keys|language_name|last|length|locale_name|lower|map|markdown_to_html|merge|nl2br|number_format|raw|reduce|replace|reverse|round|slice|slug|sort|spaceless|split|striptags|timezone_name|title|trim|u|upper|url_encode)$"))

; Craft CMS specific filters  
((filter_identifier) @identifier.function
  (#match? @identifier.function "^(address|append|ascii|atom|base64_decode|base64_encode|boolean|camel|camelize|column|contains|currency|date|datetime|diff|duration|encenc|explodeClass|explodeStyle|filesize|filter|float|group|hash|httpdate|id|index|indexBy|integer|intersect|json_decode|json_encode|kebab|lcfirst|literal|markdown|md|merge|money|multisort|namespace|namespaceInputId|namespaceInputName|ns|number|parseAttr|parseRefs|pascal|percentage|prepend|purify|push|removeClass|replace|rss|snake|string|time|timestamp|translate|t|truncate|ucfirst|ucwords|underscored|unique|unshift|values|where|widont|without|withoutKey)$"))

; Alternative approach: mark the pipe and following identifier
((output_directive
  "|" @operator
  . (filter
      (filter_identifier) @method)))

; Mark filter with arguments
((filter
  (filter_identifier) @method
  (arguments) @method.arguments))