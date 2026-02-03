![alt text](assets/banner.png)

`Godot Editor Tweaks` is a small addon for the [Godot](https://godotengine.org/) game Engine which adds a number of convenience features. This is primarily a testing ground for features or workflows which I want to see implemented in Engine.

![alt text](assets/create_actor.png)

The script will create a new folder based on this name, as well as a `.tscn` file, and a `.gd` script file.

![alt text](assets/folder_structure.png)

The scene and script will both automatically be opened for editing, and the script will be attached to the root node of the scene, which will also be named correctly. 

![alt text](assets/scene_structure.png)

Additionally, there are options to disable creation of the wrapping folder, or the script.

![alt text](assets/creation_ui.png)

## How to Use

This addon is not currently in the Godot Asset Library, so if you want to use this addon you will need to download from github. The easiest way to do this is to use the `Code -> Download Zip` option. Drag the 'addons' folder into your project, or just grab the 'create_actor' folder and move it into your own 'addons' folder.

You will need to enable the plugin in `Project -> Project Settings -> Plugins`.

## Why?

Godot doesn't have the concept of an "actor". Everything is just nodes and scenes. This is good and flexible, but annoying when you want to create many actors!

The "actor" flow defined in this plugin just automates the standard practice of creating a folder, scene, and GDScript file, all with a shared name.

You can use it for creating actors, components, levels, etc. Really anything that matches this format.

# Version History

## 1.6.0

 - Removes ability to use @export vars with drag+drop (integrated into Godot itself!)
## 1.5.0

 - Adds dock for animation rebasing

## 1.4.0

 - Add ability to use @export vars with drag+drop

## 1.3.0

 - Added 'Create AudioStreamRandomizer support

## 1.2.0

 - Added keyboard shortcut to open the create_actor menu.

## 1.1.0

- Added option to create `C#` scripts as well as GDScript files
- Added option to change the location of the created actor.
- Added ClassName automatically to GDScript template

## 1.0.0

Initial release of the plugin, offering basic 'Create Actor' support.
