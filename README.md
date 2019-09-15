# IsTTY

Is your file a terminal device (TTY)? This little library provides answers.

## API

All API returns a boolean answer!

```swift
// For standard file descriptors
IsTTY.standardOutput
IsTTY.standardInput
IsTTY.standardError
// If you don't like the abbreviation:
IsTerminal.standardOutput
IsTerminal.standardInput
IsTerminal.standardError

// Arbitrary file descriptors:
fileIsTTY(descriptor: yourFile)
// Without abbreviation
fileIsTerminal(descriptor: yourFile)

// Foundation is supported:
// Using stdout as example
FileHandle.standardOutput.isTTY
FileHandle.standardOutput.isTerminal
// Works with arbitrary file handle:
myFileHandle.isTTY
myFileHandle.isTerminal
```

## Install

Use SwiftPM.

```swift
.package(url: "http://github.com/dduan/IsTTY", from: "0.1.0")
```

## License

MIT.
