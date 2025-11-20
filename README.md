Under Ground Steam Installer (UGSI)

A lightweight Windows batch tool designed to install the Steam client without requiring administrator permissions.
UGSI uses the RunAsInvoker compatibility layer to bypass elevation prompts and allows Steam to install into a user-writable directory.

Features

🚫 No Admin Rights Needed – Runs the Steam installer without admin elevation.

📁 Automatic Install Directory – Creates a controlled folder (Totally_Not_Steam_Files) for installation.

⬇️ Auto-Download – Retrieves the official Steam installer if it isn’t already present.

🧹 Self-Cleaning – Removes the installer and script and clears the Recycle Bin afterward.

📝 Guided Setup – Explains exactly how to select the correct directory during installation.

After Installation

You can rename the installation folder to anything you want.

Example: SystemSupport, WinDataCache, or any neutral name.

If you want the folder out of sight, you can hide it using Windows’ built-in attributes:

Right-click → Properties → check Hidden

Or run: attrib +h YourFolderName

Steam will continue to work as long as the folder path stays the same after renaming.

How It Works

UGSI sets the Windows environment variable __COMPAT_LAYER=RunAsInvoker to prevent elevation requests.
It launches Steam’s installer normally but without admin prompts, letting the user choose a non-protected folder created by the script.

Intended Use

For:

Restricted PCs (school, work, shared machines)

Portable installs

Testing / sandboxed setups

Users who want Steam in a custom directory without admin access

Disclaimer

UGSI does not crack, modify, or interfere with Steam’s functionality.
It simply changes how the official Steam installer is executed.
Users are responsible for complying with any system or network policies.
