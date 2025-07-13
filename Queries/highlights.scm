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

; Filters and functions
(filter_identifier) @function
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

; Common Twig filter names (high priority)
((filter_identifier) @function
  (#match? @function "^(upper|lower|capitalize|truncate|length|default|escape|join|date|number_format|abs|batch|first|last|merge|raw|reverse|slice|sort|split|trim|replace)$"))