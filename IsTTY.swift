#if os(Linux)
import Glibc
#else
import Darwin
#endif

/// Given a Unix file descriptor, return whether it's an terminal device.
public func fileIsTTY(descriptor: Int32) -> Bool {
    return isatty(descriptor) == 1
}

/// Given a Unix file descriptor, return whether it's an terminal device.
public let fileIsTerminal = fileIsTTY

/// Namespace for standard file descriptors.
public enum IsTTY {
    /// True if standand output is a terminal device.
    public static var standardOutput: Bool {
        return fileIsTTY(descriptor: fileno(stdout))
    }

    /// True if standand input is a terminal device.
    public static var standardInput: Bool {
        return fileIsTTY(descriptor: fileno(stdin))
    }

    /// True if standand error is a terminal device.
    public static var standardError: Bool {
        return fileIsTTY(descriptor: fileno(stderr))
    }
}

/// Namespace for standard file descriptors.
public typealias IsTerminal = IsTTY

#if canImport(Foundation)
import Foundation
extension FileHandle {
    /// Whether this file is a terminal device.
    public var isTTY: Bool {
        return fileIsTTY(descriptor:)(self.fileDescriptor)
    }

    /// Whether this file is a terminal device.
    public var isTerminal: Bool {
        return self.isTTY
    }
}
#endif
