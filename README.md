# Twig Tree-sitter for Nova

A comprehensive Tree-sitter based Twig template syntax extension for Nova editor.

## Features

### 🎨 **Rich Syntax Highlighting**
- Complete Twig syntax support (tags, variables, filters, tests, functions)
- All Twig delimiters: `{{}}`, `{%%}`, `{##}` with whitespace control variants
- Full operator support: `|`, `+`, `-`, `*`, `/`, `==`, `!=`, `and`, `or`, `not`, etc.
- Literal values: strings, numbers, booleans, arrays, hashes

### 🏷️ **Comprehensive Tag Support**
- Control structures: `if/endif`, `for/endfor`, `set/endset`
- Template inheritance: `block/endblock`, `extends`, `include`, `embed`
- Macros: `macro/endmacro` with parameter support
- Advanced tags: `autoescape`, `apply`, `verbatim`, `cache`, `spaceless`

### 🔧 **Filter Recognition**
- All common Twig filters: `upper`, `lower`, `capitalize`, `truncate`, `date`, `default`, `escape`, `join`, `length`, `merge`, `raw`, `reverse`, `slice`, `sort`, `split`, `trim`, `replace`, etc.
- Filter chaining with pipe operator `|`
- Filter arguments with proper syntax highlighting

### 🚀 **Craft CMS Support**
- **JavaScript blocks**: Full syntax highlighting for `{% js %}...{% endjs %}`
- **CSS blocks**: Full syntax highlighting for `{% css %}...{% endcss %}`
- Complete JavaScript and CSS language injection

### 📝 **Editor Features**
- **Code folding**: Block structures, comments, JS/CSS blocks
- **Symbol navigation**: Macros, variables, blocks
- **Local scopes**: Variable definitions and references
- **HTML injection**: Template content with HTML highlighting

## Installation

1. Download or clone this extension
2. In Nova: **Extensions** → **Activate Project as Extension**
3. Open `.twig` or `.html.twig` files

## Supported File Types

- `.twig` files
- `.html.twig` files

The syntax appears as **"Twig-HTML"** in Nova's syntax selector.

## Examples

### Basic Twig Syntax
```twig
{# This is a comment #}
{{ variable | upper }}

{% if user %}
    <h1>Hello {{ user.name | default('Guest') }}!</h1>
{% endif %}

{% for item in items | slice(0, 5) %}
    {{ loop.index }}: {{ item.title | truncate(50) }}
{% endfor %}
```

### Craft CMS JS/CSS Blocks
```twig
{% js %}
console.log('JavaScript with full syntax highlighting');
const message = 'Variables, functions, everything works!';
document.querySelector('.container').classList.add('active');
{% endjs %}

{% css %}
.container {
    background-color: #f0f0f0;
    margin: 10px auto;
    border-radius: 8px;
}

#header {
    font-size: 24px;
    color: var(--primary-color);
}
{% endcss %}
```

### Advanced Template Features
```twig
{% set items = [1, 2, 3, 4, 5] %}

{% macro render_field(field, options = {}) %}
    <div class="field {{ options.class | default('') }}">
        <label>{{ field.label }}</label>
        <input 
            name="{{ field.name }}" 
            value="{{ field.value | escape }}"
            type="{{ field.type | default('text') }}"
        >
    </div>
{% endmacro %}

{% autoescape 'html' %}
    {{ content | raw }}
{% endautoescape %}
```

## Technical Details

- Built on Tree-sitter for precise, fast parsing
- Based on the excellent `gbprod/tree-sitter-twig` grammar
- Extended with Craft CMS specific features
- Optimized for Nova's highlighting and folding systems
- Supports macOS universal binary (Apple Silicon + Intel)

## Development

### Building from Source

```bash
# Install dependencies
npm install

# Generate parser
npm run generate

# Compile for macOS
npm run compile

# Run tests
npm test
```

### Project Structure

```
twig-nova-treesitter.novaextension/
├── grammar.js              # Tree-sitter grammar
├── extension.json          # Nova extension manifest
├── main.js                 # Extension entry point
├── Syntaxes/
│   ├── Twig.xml           # Nova syntax configuration
│   └── libtree-sitter-twig.dylib  # Compiled parser
├── Queries/
│   ├── highlights.scm     # Syntax highlighting rules
│   ├── folds.scm         # Code folding rules
│   ├── injections.scm    # Language injections
│   ├── locals.scm        # Local scope rules
│   └── symbols.scm       # Symbol navigation
└── Tests/
    ├── test.twig          # Basic test file
    └── test_js_css_blocks.twig  # Craft CMS test file
```

## License

MIT License - see LICENSE file for details.

## Acknowledgments

- Built on the excellent [gbprod/tree-sitter-twig](https://github.com/gbprod/tree-sitter-twig) grammar
- Inspired by Nova's Tree-sitter documentation and examples