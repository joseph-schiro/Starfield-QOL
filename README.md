# Starfield-QOL

__Starfield QoL Mod Pack__

__Version 1.0.0 (20230910)__

__Created By: jschiro99__


## Introduction

This collection of mods is designed to compile all known-compatible Starfield mods that work on the Xbox Gamepass Version of the game. 
This version of the pack focuses on basic QoL (Quality of Life) improvements  - i.e : inventory overhaul, dark theme terminals, inventory icons, FOV changes, etc.


## Key Features

- Precompiled modpack compatible with Starfield - Xbox Gamepass Version
- List of all mods in modpack, with direct links.
- Detailed instructions on how to install the modpack
- Automatic EasyBackup, EasyInstall, and EasyRemoval batch files.

## Quick Navigation
* **[Enable Modding in Starfield](#enable-modding-in-starfield)**
* **[Install Modpack - Automatic](#install-modpack--automatic-)**
* **[Install Modpack - Manual](#install-modpack--manual-)**
* **[Remove Modpack - Automatic](#remove-modpack--automatic-)**
* **[Mod List](#mod-list)**
* **[Author/Credits](#authorcredits)**

## Enable Modding in Starfield

__NOTE: THIS STEP IS NOT NEEDED IF YOU DO THE AUTO INSTALL__

1. Open the original “Starfield” folder.
2. Create a new txt file, rename it to "StarfieldCustom.ini"
3. Open the new .ini file, and input these lines:
```[Archive]
bInvalidateOlderFiles=1
sResourceDataDirsFinal=
```
4. Save and close the file.

_NOTE: This modpack already comes with a pre-configured StarfieldCustom.ini file_


## Install Modpack [ Automatic ]

1. Download the modpack anywhere on your PC you have access to.
2. Run the EasyBackup.bat (NOT REQUIRED, RECOMMENDED).
3. Run the EasyInstall.bat.

_NOTE: The EasyBackup bat file automatically copies the current contents of your data directory into "Starfield - BACKUP"._
_NOTE: The EasyInstall bat file automatically copies the contents of this directory over to the proper location._


## Install Modpack [ Manual ]

_NOTE: ENSURE YOU BACKUP THIS DIRECTORY BEFORE PROCEEDING:_

```C:/Users/<username>/Documents/My Games/Starfield```

Within the main modpack directory, you will notice two folders and a file. “Data”, “Extras”, and “StarfieldCustom.ini”.

__Data__: Main mod folder - contains all mod files.
__Extras__: Contains some extra mod options and README files.
__StarfieldCustom.ini__: Contains extra configs to StarfieldCustom.ini (CLEANFIELD SUPPORT).

1. Navigate to ```C:/Users/<username>/Documents/My Games/Starfield.```
2. Extract contents of modpack into this directory.
3. If asked to overwrite, click Yes.


## Remove Modpack [ Automatic ]

__WARNING: THIS WILL REMOVE ALL MODS INSTALLED - INCLUDING ANY MODS ADDED PREVIOUSLY OR AFTER INSTALLATION OF THIS PACK.__

1. Download the modpack anywhere on your PC you have access to.
2. Run the EasyRemoval.bat.

_NOTE: The EasyRemoval bat file will remove all mods currently installed, and will revert your game to vanilla._


## Mod List

| Name                                              | Author    | Link      |
| :------------------------------------------------- |:---------:| :---------:|
| Cleanfield - A No-Intro Videos and Clean Menu Fix | Gametism  | [Mod Page](https://www.nexusmods.com/starfield/mods/88)  |
| Dark Mode for Terminals                           | animandan | [Mod Page](https://www.nexusmods.com/starfield/mods/861) |
| Easy Read - Crafting Stations                     | AoEnwyr   | [Mod Page](https://www.nexusmods.com/starfield/mods/845) |
| Icon Sorting Tags - Starfield Edition             | mcguffin  | [Mod Page](https://www.nexusmods.com/starfield/mods/312) |
| StarUI Inventory                                  | m8r98a4f2 | [Mod Page](https://www.nexusmods.com/starfield/mods/773) |


## Author/Credits

Huge credit goes to Bethesda for not letting us down again, and also to the developers who created the mods (listed above).

Modpack created by: jschiro99

Modpack tested by: jschiro99, Jokiir
