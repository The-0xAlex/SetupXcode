import Foundation

print("Install 0xAlex's super cool Xcode settings.\n               ------")
print("Do you want his color theme? (y/n)")
let colorTheme = readLine() == "y"
print("What about his key bindings? (y/n)")
let keyBindings = readLine() == "y"

guard colorTheme || keyBindings else { exit(0) }

let userDataDir = getUserDataDir()

if colorTheme {
  print("Installing 0xAlex's Xcode Color Theme...")
  copyFile("0xAlex.xccolortheme", to: userDataDir.appendingPathComponent("FontAndColorThemes"))
  print("0xAlex's Xcode Color Theme successfully installed.\n")
}

if keyBindings {
  copyFile("0xAlex.idekeybindings", to: userDataDir.appendingPathComponent("KeyBindings"))
  print("0xAlex's Xcode key bindings successfully installed.\n")
}

print("Complete. Restart Xcode, open preferences, and make good choices.\n")
exit(0)

// MARK: - Helpers

@inline(__always)
func loadTextFile(_ nameWithExt: String) -> String {
  let filePath = #file.replacingOccurrences(
    of: "Sources/SetupXcode/main.swift",
    with: nameWithExt
  )
  guard let str = try? String(contentsOfFile: filePath)
  else { fatalError("Failed to load file from package.") }
  
  return str
}

@inline(__always)
func getUserDataDir() -> URL {
  let fs = FileManager.default
  let homeDir = fs.homeDirectoryForCurrentUser
  let xcodeDirPath = "\(homeDir.path)/Library/Developer/Xcode"
  guard fs.fileExists(atPath: xcodeDirPath)
  else { fatalError("Failed to locate \(xcodeDirPath).  Install Xcode.") }
  
  return homeDir
    .appendingPathComponent("Library")
    .appendingPathComponent("Developer")
    .appendingPathComponent("Xcode")
    .appendingPathComponent("UserData")
}

@inline(__always)
func copyFile(_ name: String, to directory: URL) {
  let fs = FileManager.default
  if !fs.fileExists(atPath: directory.path) {
    do {
      try fs.createDirectory(at: directory, withIntermediateDirectories: true)
    } catch { fatalError("Failed to create a directory at \(directory)") }
  }
  
  let fileContents = loadTextFile(name)
  let outPath = directory.appendingPathComponent(name)
  do {
    try fileContents.write(to: outPath, atomically: true, encoding: .utf8)
  } catch { print("Could not create the theme file in your \(directory) directory.") }
}
