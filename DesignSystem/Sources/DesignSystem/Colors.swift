import SwiftUI

/// Semantic (role-based) colors — the only color API feature code should use.
///
/// Each role aliases a `Palette` primitive, the same way Figma semantic
/// variables alias primitive variables.
public enum Colors {
    // Tints
    public static let tintPrimary = Palette.purple500
    public static let tintPrimaryStrong = Palette.purple800
    public static let tintError = Palette.red500
    public static let tintErrorLight = Palette.red100
    public static let tintSuccess = Palette.green500
    public static let tintBlue = Palette.blue500
    public static let tintBluePastel = Palette.blue300
    public static let tintYellow = Palette.yellow500

    // Text
    public static let textPrimary = Palette.purple950
    public static let labelOnTintPrimary = Color.white

    // Surfaces
    public static let backgroundPrimary = Color.white
    public static let surfaceSubtle = Palette.purple50
}
