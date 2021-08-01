# NES Controllers Explained
Code example from the "NES Controllers Explained" video on the NesHacker Youtube
channel.

## Playing the ROM
If you only want to run the demo code there is no need to build it yourself, the
`Controllers.nes` ROM file should work with most major emulators. Once it runs
try pressing some buttons to see visual cues when certain buttons are pressed.

## Building via Visual Studio Code
The main file used to build the ROM is `Controllers.s`, which directly includes
the source for reading controllers from `ReadController.s`.

In order to assemble the ROM from code in VS Code you need to install the
"ca65 Macro Assembler Language Support (6502/65816)" extension in the editor and
configure the `cl65config.json` file in the root directory of the repository:

### Mac/Linux Users
Copy the `cl65config.maxlinux.json` to replace the `cl65config.json` in the root
directory of the repository.

### Windows 10 Users
Install the CC65 compiler suite directly to `C:\cc65` on your computer and then
replace the `cl65config.json` file with the `cl65config.windows10.json` in the
root directory of the repository.

### Building the ROM
With the configuration complete, to build the ROM simply open the
`Controllers.s` in Visual Studio Code then use the command palette
(`Ctrl+Shift+P`) and select `Tasks: Run Build Task`.

## License
MIT
