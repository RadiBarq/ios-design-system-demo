import CoreGraphics

/// Size primitives — icons, avatars, controls.
///
/// `{category}{step}` on the base-4 hundreds scale: `size600` = 6 × 4 = 24pt.
/// Source of truth: Figma variables, collection "Sizes".
public enum Size {
    /// size100 — 4pt (Figma: size/4)
    public static let x100: CGFloat = 4
    /// size200 — 8pt (Figma: size/8)
    public static let x200: CGFloat = 8
    /// size300 — 12pt (Figma: size/12)
    public static let x300: CGFloat = 12
    /// size400 — 16pt (Figma: size/16)
    public static let x400: CGFloat = 16
    /// size500 — 20pt (Figma: size/20)
    public static let x500: CGFloat = 20
    /// size550 — 22pt (Figma: size/22)
    public static let x550: CGFloat = 22
    /// size600 — 24pt (Figma: size/24)
    public static let x600: CGFloat = 24
    /// size800 — 32pt (Figma: size/32)
    public static let x800: CGFloat = 32
    /// size900 — 36pt (Figma: size/36)
    public static let x900: CGFloat = 36
    /// size1000 — 40pt (Figma: size/40)
    public static let x1000: CGFloat = 40
    /// size1050 — 42pt (Figma: size/42)
    public static let x1050: CGFloat = 42
    /// size1100 — 44pt (Figma: size/44)
    public static let x1100: CGFloat = 44
    /// size1200 — 48pt (Figma: size/48)
    public static let x1200: CGFloat = 48
    /// size1400 — 56pt (Figma: size/56)
    public static let x1400: CGFloat = 56
    /// size1600 — 64pt (Figma: size/64)
    public static let x1600: CGFloat = 64
    /// size1800 — 72pt (Figma: size/72)
    public static let x1800: CGFloat = 72
    /// size2350 — 94pt (Figma: size/94)
    public static let x2350: CGFloat = 94
    /// size2400 — 96pt (Figma: size/96)
    public static let x2400: CGFloat = 96
    /// size3200 — 128pt (Figma: size/128)
    public static let x3200: CGFloat = 128
    /// size3600 — 144pt (Figma: size/144)
    public static let x3600: CGFloat = 144
}

/// Semantic icon sizes — aliases to `Size` primitives (Figma: icon/*).
public enum IconSize {
    /// icon/sm → size400
    public static let sm = Size.x400
    /// icon/md → size600
    public static let md = Size.x600
    /// icon/lg → size800
    public static let lg = Size.x800
}

/// Semantic avatar sizes — aliases to `Size` primitives (Figma: avatar/*).
public enum AvatarSize {
    /// avatar/small → size550
    public static let small = Size.x550
    /// avatar/standard → size800
    public static let standard = Size.x800
    /// avatar/medium → size1200
    public static let medium = Size.x1200
    /// avatar/large → size1800
    public static let large = Size.x1800
    /// avatar/x-large → size2350
    public static let xLarge = Size.x2350
    /// avatar/xx-large → size3600
    public static let xxLarge = Size.x3600
}

/// Semantic button heights — aliases to `Size` primitives (Figma: button/*).
public enum ButtonSize {
    /// button/secondary → size1000
    public static let secondary = Size.x1000
    /// button/circular → size1100
    public static let circular = Size.x1100
    /// button/cta → size1400
    public static let cta = Size.x1400
}
