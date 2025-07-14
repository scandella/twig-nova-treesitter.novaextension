; === Twig Tree-sitter Language Injections ===

; HTML injection for general content
((content) @injection.content
 (#set! injection.language "html")
 (#set! injection.combined))

; JavaScript injection for Craft CMS {% js %} blocks
((js_block
  content: (js_content) @injection.content)
 (#set! injection.language "javascript"))

; CSS injection for Craft CMS {% css %} blocks
((css_block
  content: (css_content) @injection.content)
 (#set! injection.language "css"))