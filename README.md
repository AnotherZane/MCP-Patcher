# MCP-Patcher

 A simple patch creation tool for MCP which  lets you distrubute your changes to the client in the form of patch files.

#### Note: It is recommened that you use wsl if you are on windows.


### Prerequisites

- ``git``

- ``unrar`` (Required to add optifine)

### Setup:

- Make ``mcp-patcher`` file executable with command: ``chmod +x mcp-patcher``.

- Make ``scripts/*`` executable with command: ``chmod +x scripts/*``.

- Run the setup with command: ``./mcp-patcher setup``.

- You can now open the **Client/** folder in IDE of choice to make changes.

- **Note:** The setup starts the gradle daemon, you might want to stop this after the setup as it has a significant amount of resource usage.

### Generating Patches

- Once you make changes to your client, use git to create a commit **in the Client folder**.

- Change your directory to the main repo and run the command: ``./mcp-patcher generate``.

- You will now find generated patches in the **Patches/** folder, which can be pushed to your remote git repository.

### Applying Patches

- Once you pull remote changes, you need to apply the new patches.

- Change your directory to the main repo and run the command: ``./mcp-patcher patch``.

- You will now find that the new patches have been applied to your Client source code.

### Credits:

* [MCP-Reborn](https://github.com/Hexeption/MCP-Reborn) for a working MCP ([Hexeption](https://github.com/Hexeption), [kingdevnl](https://github.com/kingdevnl))

* [Optifine-SRC](https://github.com/Hexeption/Optifine-SRC) for optifine source code ([Hexeption](https://github.com/Hexeption))

* [Paper](https://github.com/PaperMC/Paper) for parts of some scripts ([PaperMC Team](https://github.com/PaperMC))

* [MinecraftForge](https://github.com/MinecraftForge/MinecraftForge) for MCPConfig, ForgeGradle ([MinecraftForge Team](https://github.com/MinecraftForge))
