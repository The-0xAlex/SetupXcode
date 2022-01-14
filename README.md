# SetupXcode

### 0xAlex's 🎨 Color Scheme, ⌨️ KeyBindings, and other Xcode stuffs.

This package contains the Xcode theme and keybindings I use.  Since they are 
the greatest of all time, I made it public so others can experience the glory.

I have various machines, work locations, and installs, so I use this executable
and others like it to quickly adjust my Xcode stuff when the machine isn't set 
up yet.  Use it as a starting point if you want to do something similar.
_(Another obvious use-case: Steal this and modify a private one to rapidly prank 
your victi... friends who leave their IDE unattended)_

## Some Juicy Samples of the-only-theme-you-could-ever-want™

> - This very pack's install script
>> ![This very pack's install script](Colors0.png)
>
> - A randomly selected Leetcode question to show-off this amazing syntax coloring
>> ![amazing syntax coloring](Colors1.png)
>
> - It takes a lot for me to customize a binding... I use these all the time
>> ![I use these all the time](Bindings.png)
>
> - Random Swift file with a declaration highlighted
>> ![declaration highlighted](Colors2.png)
>
> - Metal Shading Language colors
>> ![Metal](Colors3.png)
>
> - Literally this markdown file in Xcode
>> ![Literally this markdown file in Xcode](Colors4.png)

## Install using SPM if you're a 1337_hax0r

Clone the repo and execute the pack with `swift run`

```
git clone https://github.com/The-0xAlex/SetupXcode.git
cd SetupXcode && swift run
```

Gotta get your hygeine on, so bathe afterwords:

```
cd .. && rm -rf SetupXcode
```



## Install manually to burn calories and time

```
# 1
git clone https://github.com/The-0xAlex/SetupXcode.git
# 2 (If you want the theme)
mkdir ~/Library/Developer/Xcode/UserData/FontAndColorThemes
cp SetupXcode/0xAlex.xccolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes/0xAlex.xccolortheme
#3 (If you want the keyBindings)
mkdir ~/Library/Developer/Xcode/UserData/KeyBindings
cp SetupXcode/0xAlex.xccolortheme ~/Library/Developer/Xcode/UserData/KeyBindings/0xAlex.idekeybindings
#4
rm -rf SetupXcode
#5 Cooldown.
```

Here's what this does, so you can do it in the Finder GUI if you so choose:
1. Clone this repo from GitHub.
2. Create a directory at this path (will just print that it exists if it's 
   already there) and copy the theme file from the repo to where Xcode
   expects it to be.
3. Same thing as 2 but for the KeyBindings.
4. Delete the repo you downloaded.
5. **Realize you'll never get that time back and you should have just run 
   the script.**

## Attributions

I have a ton of things like this that I use to EZ-bake my environments on 
different OSes for various stuff.  I'm sure I got implementation ideas from 
somewhere, so if it was you open a ticket and your name will appear here.
