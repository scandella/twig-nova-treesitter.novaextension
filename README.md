# Twig Tree-sitter for Nova

Twig template syntax extension for Nova editor with Craft CMS support. Should work in Nova 13.

## Features

### 🎨 **Rich Syntax Highlighting**
- Complete Twig syntax support (tags, variables, filters, tests, functions)
- All Twig delimiters: `{{}}`, `{%%}`, `{##}` with whitespace control variants

### 🏷️ **Comprehensive Tag Support**
- Control structures: `if/endif`, `for/endfor`, `set/endset`
- Template inheritance: `block/endblock`, `extends`, `include`, `embed`
- Macros: `macro/endmacro` with parameter support
- Advanced tags: `autoescape`, `apply`, `verbatim`, `cache`, `spaceless`

### 🔧 **Filter Recognition**
- **All standard Twig filters**: `upper`, `lower`, `capitalize`, `truncate`, `date`, `default`, `escape`, `join`, `length`, `merge`, `raw`, `reverse`, `slice`, `sort`, `split`, `trim`, `replace`, etc.
- **Craft CMS specific filters**: `camel`, `kebab`, `pascal`, `currency`, `filesize`, `datetime`, `hash`, `base64_encode`, `translate` (`t`), `append`, `prepend`, `where`, `group`, `indexBy`, `widont`, `parseRefs`, and many more
- Filter chaining with pipe operator `|`
- Filter arguments with proper syntax highlighting

### 🚀 **Craft CMS Support**
- **JavaScript blocks**: Full syntax highlighting for `{% js %}...{% endjs %}`
- **CSS blocks**: Full syntax highlighting for `{% css %}...{% endcss %}`
- Complete JavaScript and CSS language injection

## Installation

### From GitHub Release (Recommended)

1. Download the latest `twig-nova-treesitter.novaextension.zip` from [Releases](https://github.com/scandella/twig-nova-treesitter.novaextension/releases)
2. Unzip and double-click the `.novaextension` folder
3. Nova will automatically install the extension
4. Open any `.twig` file to start using it

### Manual Installation

1. Clone this repository
2. Open the cloned folder in Nova (**File** → **Open**)
3. **Extensions** → **Activate Project as Extension**

For detailed installation instructions, see [INSTALL.md](INSTALL.md).

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
├── extension.png           # Extension icon (256x256)
├── README.md               # Documentation
├── INSTALL.md              # Installation guide
├── CHANGELOG.md            # Version history
├── Scripts/
│   └── main.js            # Extension entry point
├── Syntaxes/
│   ├── Twig.xml           # Nova syntax configuration
│   └── libtree-sitter-twig.dylib  # Compiled parser
├── Queries/
│   ├── highlights.scm     # Syntax highlighting rules
│   ├── folds.scm         # Code folding rules
│   ├── injections.scm    # Language injections
│   ├── locals.scm        # Local scope rules
│   └── symbols.scm       # Symbol navigation
├── Tests/
│   ├── test.twig          # Basic test file
│   ├── test_filter.twig   # Filter tests
│   ├── test_craft_filters.twig  # Craft CMS filters
│   ├── test_js_css_blocks.twig  # Craft CMS blocks
│   └── minimal_filter.twig      # Minimal filter test
└── src/
    ├── parser.c           # Generated parser source
    ├── grammar.json       # Compiled grammar
    └── node-types.json    # AST node definitions
```

## License

MIT License - see LICENSE file for details.

## Acknowledgments

- Built on the excellent [gbprod/tree-sitter-twig](https://github.com/gbprod/tree-sitter-twig) grammar
- Inspired by Nova's Tree-sitter documentation and examples