## Torque 2D - Empty

MIT Licensed Open Source version of Torque 2D from GarageGames.

Based off of Torque2D 3.1, this version of Torque2D strips out a lot of things to make it a very minimalistic shell. TAML persistance, module and asset databases, ios and andriod platforms, and all of the 2D specific components have been removed.

This shell has the following features to be able to have use in any project:

* **Cross Platform** Windows XP+, MacOSX Intel, Linux, FreeBSD
* **GUI** The familiar built-in GUI exposed through script that's found in the torque engines.
* **Scripting** Minimalistic use of TorqueScript, to exposure to your whole project.
* **Input** Cross Platform Input support, with controller support as well.
* **Audio** Through the use of cross platform OpenAL audio library.
* **Networking** Through the use of the famous Torque networking system that has been used since the old days.
* **Cross Platform Build System** Through the use of [GENie](https://github.com/bkaradzic/genie#what-is-it)

### Building the Source

#### Windows
In the command prompt, CD into the build directory, and execute genie with a visual studio as an argument. Supported compilier is visual studio 2013.

Example command:

```
"genie.exe vs2013"
```

#### Mac OSX
In terminal, CD into the build directory, and execute genie with the xcode3 or xcode4 as the argument. Supported compilier is xcode4 and up for x64 based machines, and xcode3 for powerpc or 32bit based machines.

Example command on x64 based mac:

```
"./genie_intel_x64 xcode4"
```

Example command on a PowerPC mac:

```
"./genie_ppc xcode3"
```
