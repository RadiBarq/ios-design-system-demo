import CoreGraphics

/// Spacing primitives — gaps, padding, margins.
///
/// Token names follow the shared `{category}{step}` convention where steps use
/// the base-4 "hundreds" scale: `100` = one base unit = 4pt, so `space400` = 16pt.
/// The `x` prefix exists only because Swift identifiers can't start with a digit.
/// Source of truth: Figma variables, collection "Spacing".
public enum Space {
    /// space0 — 0pt (Figma: space/0)
    public static let x0: CGFloat = 0
    /// space12_5 — 0.5pt hairline (Figma: space/0_5)
    public static let x12_5: CGFloat = 0.5
    /// space50 — 2pt (Figma: space/2)
    public static let x50: CGFloat = 2
    /// space100 — 4pt (Figma: space/4)
    public static let x100: CGFloat = 4
    /// space150 — 6pt (Figma: space/6)
    public static let x150: CGFloat = 6
    /// space200 — 8pt (Figma: space/8)
    public static let x200: CGFloat = 8
    /// space300 — 12pt (Figma: space/12)
    public static let x300: CGFloat = 12
    /// space400 — 16pt (Figma: space/16)
    public static let x400: CGFloat = 16
    /// space500 — 20pt (Figma: space/20)
    public static let x500: CGFloat = 20
    /// space600 — 24pt (Figma: space/24)
    public static let x600: CGFloat = 24
    /// space800 — 32pt (Figma: space/32)
    public static let x800: CGFloat = 32
    /// space1200 — 48pt (Figma: space/48)
    public static let x1200: CGFloat = 48
    /// space1600 — 64pt (Figma: space/64)
    public static let x1600: CGFloat = 64
    /// space1800 — 72pt (Figma: space/72)
    public static let x1800: CGFloat = 72
    /// space3200 — 128pt (Figma: space/128)
    public static let x3200: CGFloat = 128
    /// space6400 — 256pt (Figma: space/256)
    public static let x6400: CGFloat = 256
}
