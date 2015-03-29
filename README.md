![Torque Logo](http://static.garagegames.com/static/pg/logokits/Torque-Logo_H.png)
## Torque 2D - Empty

MIT Licensed Open Source version of Torque 2D from GarageGames.

Based off of Torque2D 3.1, this version of Torque2D strips out a lot of things to make it a very minimalistic shell. TAML persistance, module and asset databases, ios and andriod platforms, and all of the 2D specific components have been removed.

This shell has the following features to be able to have use in any project:

* **Cross Platform** Whether you are deploying to Windows (XP+ 32bit and 64bit), OSX (10.6+ 32bit and 64bit Intel), Linux (32bit), or to the Web (32bit), its covered. (Included as part of Torque2D MIT)
* **GUI** The familiar built-in GUI exposed through script that's found in the torque engines. (Included as part of Torque2D MIT)
* **Scripting** Minimalistic use of TorqueScript, to exposure to your whole project. (Included as part of Torque2D MIT)
* **Input** Cross Platform Input support, with controller support as well. (Included as part of Torque2D MIT)
* **Audio** Through the use of OpenAL (Included as part of Torque2D MIT)

**TODO:**

* **Build System** Using CMAKE
* **PowerPC OSX** The PowerPC platform for OSX 10.4.11-10.5.8
* **GLEW** OpenGL GLEW bindings, so that it's no longer restricted to what Torque2D exposes.

### Building the Source

After downloading a copy of the source code, the following project files for each platform are provided for you and can be found in the `engine/compilers` folder.

* **Windows:** Visual Studio 2010, 2012, or 2013
* **OSX:** Xcode
* **Linux:** Make
* **Web:** Emscripten/Cmake

See the [wiki](https://github.com/GarageGames/Torque2D/wiki) for available guides on platform setup and development.