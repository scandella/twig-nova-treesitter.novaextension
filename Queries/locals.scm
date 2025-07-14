; === Twig Tree-sitter Local Scopes ===

; Statement scopes
(statement_directive) @local.scope
(output_directive) @local.scope
(block_statement) @local.scope
(macro_statement) @local.scope
(for_statement) @local.scope
(if_statement) @local.scope

; Craft CMS JS/CSS block scopes
(js_block) @local.scope
(css_block) @local.scope

; Variable definitions
(assignment_statement 
  (variable) @local.definition)

; Macro parameters as definitions
(parameter) @local.definition

; For loop variables as definitions  
(for_statement
  (variable) @local.definition)