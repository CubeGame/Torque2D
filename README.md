![Torque Logo](http://static.garagegames.com/static/pg/logokits/Torque-Logo_H.png)
## Torque 2D - Empty

MIT Licensed Open Source version of Torque 2D from GarageGames.

Based off of Torque2D 3.1, this version of Torque2D strips out a lot of things to make it a very minimalistic shell. TAML persistance, module and asset databases, ios and andriod platforms, and all of the 2D specific components have been removed.

This shell has the following features to be able to have use in any project:

* **Cross Platform** Whether you are deploying to Windows (XP+ 32bit and 64bit), OSX (10.6+ 32bit and 64bit Intel), or Linux (32bit) [And probably FreeBSD (32bit)], its covered. (Included as part of Torque2D MIT)
* **GUI** The familiar built-in GUI exposed through script that's found in the torque engines. (Included as part of Torque2D MIT)
* **Scripting** Minimalistic use of TorqueScript, to exposure to your whole project. (Included as part of Torque2D MIT)
* **Input** Cross Platform Input support, with controller support as well. (Included as part of Torque2D MIT)
* **Audio** Through the use of OpenAL (Included as part of Torque2D MIT)
* **Networking** Through the use of the famous Torque networking system that has been used since the old days. (Included as part of Torque2D MIT)
* **Cross Platform Build System** Through the use of [GENie](https://github.com/bkaradzic/genie#what-is-it)

**TODO:**

* **PowerPC OSX** The PowerPC platform for OSX 10.4.11-10.5.8
* **GLEW** OpenGL GLEW bindings, so that it's no longer restricted to what Torque2D exposes.

### Building the Source

#### Windows
Navigate to the build directory and double click the genie_vs2013 bat file. Then, open up the solution and compile.

#### Mac OSX
In terminal, CD into the build directory, and execute genie with the xcode4 as the argument. Supported compilier is xcode4 and up.

Example command:

```
"./genie_intel_x64 xcode4"
```
