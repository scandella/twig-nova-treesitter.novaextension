; === Twig Tree-sitter Symbols ===

; Macro definitions
(macro_statement 
  (method) @name) @definition.function

; Variable assignments
(assignment_statement 
  (variable) @name) @definition.variable

; Block definitions
(block_statement 
  (name) @name) @definition.class

; Function definitions in apply statements
(apply_statement 
  (filter_identifier) @name) @definition.function

; Craft CMS JS/CSS blocks
(js_block) @definition.type
(css_block) @definition.type