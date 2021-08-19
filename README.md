# kotlinc-native-install
Easy-to-use installer for Kotlin/Native command-line compiler

*Note: Linux-only*

## Inspiration:
I started learning Kotlin, and I just realized, that there is no installation instructions, or automatic installers for Kotlin/Native compiler. This may be due to a lot of things (maybe to support build tools over direct compilers, perhaps unintentionally), but I think this is not a good thing, so I made this automatic installer for kotlinc-native...
## Behind the script:
The script downloads the latest Kotlin/Native release from [GitHub](https://github.com/JetBrains/Kotlin/releases) in a really [elegant way](https://gist.github.com/steinwaywhw/a4cd19cda655b8249d908261a62687f8), extracts it, moves it to your home folder, [determines your current shell](https://askubuntu.com/questions/87853/what-is-default-shell-for-terminal), and adds the downloaded directory's `bin` subdirectory to the path. Thanks for the help in the `downloadFunction()`, [agneskovacs-h](https://github.com/agneskovacs-h).
## Installation guide:
### Manual:
Open up a terminal, and follow these steps:

1.) Clone this GitHub repository using: `git clone https://github.com/piciakk/kotlinc-native-install`

2.) Go to the GitHub repo, you just cloned: `cd kotlinc-native-install`

3.) Install kotlinc-native: `chmod +x ./install.sh && ./install.sh`
### Automatic:
Open up a terminal, and run:
```bash
wget -qO- https://raw.githubusercontent.com/PiciAkk/kotlinc-native-install/main/install.sh | bash
```
## Development ideas:
*Note: I love the program at its current state, but if you fork it, then you can develop these ideas...*
- We can download the entire folder with the name: `kotlin-native-linux` (without version numbers), and the program can update it automatically, and the users can update it manually...

Feel free to fork...
