# MCP-Patcher

#### A patch creation tool for MCP.

### Prerequisites

- ``git``

- ``patch``

- ``unrar`` (Required to add optifine)

### Setup:

- Make ``mcp-patcher`` file executable with command: ``chmod +x mcp-patcher``.

- Run the setup with command: ``./mcp-patcher setup`` (Right click and run with git bash on Windows, and type setup when prompted).

- Import the build.gradle in Intellij.

- Run the gradle task 'setup' in the mcp folder.

### Patcher Usage:

- Once you have mcp setup, run ``./mcp-patcher patch`` to apply all previous patches.

- After making changes, run ``./mcp-patcher rebuild`` to rebuild patches with differences.

### How to build:

- Run the gradle task 'build', then the release jar will be in the "build/libs/".

### Credits:

* [MCP-Reborn](https://github.com/Hexeption/MCP-Reborn) for a working MCP ([Hexeption](https://github.com/Hexeption), [kingdevnl](https://github.com/kingdevnl))

* [Optifine-SRC](https://github.com/Hexeption/Optifine-SRC) for optifine source code ([Hexeption](https://github.com/Hexeption))

* [Paper](https://github.com/PaperMC/Paper) for parts of patch scripts ([PaperMC Team](https://github.com/PaperMC))

* [MinecraftForge](https://github.com/MinecraftForge/MinecraftForge) for MCPConfig, ForgeGradle ([MinecraftForge Team](https://github.com/MinecraftForge))