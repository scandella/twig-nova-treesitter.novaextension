; === Twig Tree-sitter Code Folding ===

; Comment folding
(comment) @fold

; Statement directive folding for block structures
(block_statement) @fold
(autoescape_statement) @fold
(apply_statement) @fold
(verbatim_statement) @fold
(cache_statement) @fold
(macro_statement) @fold
(for_statement) @fold
(if_statement) @fold

; Craft CMS JS/CSS blocks
(js_block) @fold
(css_block) @fold

; General statement directive folding
(statement_directive) @fold