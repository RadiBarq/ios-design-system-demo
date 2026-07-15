import CoreGraphics

/// Border-radius primitives — corner rounding.
///
/// `{category}{step}` on the base-4 hundreds scale: `radius200` = 8pt.
/// Source of truth: Figma variables, collection "Radius".
public enum Radius {
    /// radius100 — 4pt (Figma: radius/4)
    public static let x100: CGFloat = 4
    /// radius200 — 8pt (Figma: radius/8)
    public static let x200: CGFloat = 8
    /// radius300 — 12pt (Figma: radius/12)
    public static let x300: CGFloat = 12
    /// radius400 — 16pt (Figma: radius/16)
    public static let x400: CGFloat = 16
    /// radius600 — 24pt (Figma: radius/24)
    public static let x600: CGFloat = 24
}
