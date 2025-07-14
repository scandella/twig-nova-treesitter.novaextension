# Installation Guide

## Installing from GitHub Release

1. **Download the extension**
   - Go to the [Releases page](https://github.com/scandella/twig-nova-treesitter.novaextension/releases)
   - Download the latest `twig-nova-treesitter.novaextension.zip` file

2. **Install in Nova**
   - Unzip the downloaded file
   - Double-click the `twig-nova-treesitter.novaextension` folder
   - Nova will automatically install the extension

3. **Verify installation**
   - Open Nova's Extension Library (Window → Extension Library)
   - Look for "Twig Tree-sitter" in your installed extensions
   - The extension should be enabled by default

## Alternative: Manual Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/scandella/twig-nova-treesitter.novaextension.git
   ```

2. Open the project in Nova:
   - In Nova: **File** → **Open** (or Cmd+O)
   - Select the cloned `twig-nova-treesitter.novaextension` folder

3. Activate as extension:
   - Go to **Extensions** → **Activate Project as Extension**
   - The current project will be activated as an extension

## Usage

Once installed:
- Open any `.twig` or `.html.twig` file
- The syntax will automatically be recognized
- Look for "Twig-HTML" in the syntax selector (bottom right of the editor)

## Troubleshooting

If the extension doesn't work:
1. Restart Nova
2. Check the Extension Console (Window → Extension Console) for errors
3. Ensure you're using Nova 10.0 or later
4. File an issue on [GitHub](https://github.com/scandella/twig-nova-treesitter.novaextension/issues)