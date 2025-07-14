# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.4] - 2025-07-14

### Documentation
- Updated README.md with improved documentation formatting
- Minor cleanup of documentation files

## [0.1.1] - 2025-07-13

### Added
- Comprehensive Craft CMS filter support (camel, kebab, currency, datetime, etc.)
- Test file for Craft CMS specific filters
- Improved filter styling (now uses function style instead of processing)
- Installation guide (INSTALL.md) with detailed setup instructions

### Fixed
- Filter recognition was showing in italic red - now displays with proper function styling

### Documentation
- Added comprehensive installation instructions for both GitHub release and manual installation
- Clarified manual installation process with proper steps

## [0.1.0] - 2025-07-13

### Added
- Initial release of Twig Tree-sitter extension for Nova
- Complete Twig syntax highlighting with Tree-sitter parser
- Support for all Twig delimiters: `{{}}`, `{%%}`, `{##}` with whitespace control
- Comprehensive tag support: if/endif, for/endfor, set/endset, block/endblock, macro/endmacro
- Filter recognition with pipe operator support
- Craft CMS specific features:
  - JavaScript blocks (`{% js %}...{% endjs %}`) with full syntax highlighting
  - CSS blocks (`{% css %}...{% endcss %}`) with full syntax highlighting
  - Language injection for JS and CSS content
- Code folding for blocks, comments, and JS/CSS sections
- Symbol navigation for macros, variables, and blocks
- Local scope definitions and references
- Universal binary parser support (ARM64 + Intel)
- HTML injection for template content

### Technical Details
- Built on gbprod/tree-sitter-twig grammar
- Extended with Craft CMS block support
- Optimized query files for Nova compatibility
- Syntax appears as "Twig-HTML" in Nova's syntax selector

### Files Structure
- Tree-sitter grammar and compiled parser
- Comprehensive query files (highlights, folds, injections, locals, symbols)
- Nova syntax configuration
- Test files for validation