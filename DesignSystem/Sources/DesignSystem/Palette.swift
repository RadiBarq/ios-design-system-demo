import SwiftUI

/// Color primitives — the raw ramps, mirroring the Figma "Colors" collection 1:1.
///
/// Internal on purpose: feature code must use the semantic roles in `Colors`,
/// never raw palette names (naming convention, rule 4).
enum Palette {
    // Purple
    static let purple50 = Color(hex: 0xFFF5FF)
    static let purple100 = Color(hex: 0xFFDFFF)
    static let purple200 = Color(hex: 0xFFA0FF)
    static let purple300 = Color(hex: 0xD160FF)
    static let purple400 = Color(hex: 0xB443FF)
    static let purple500 = Color(hex: 0x9626FF)
    static let purple600 = Color(hex: 0x7E13DB)
    static let purple700 = Color(hex: 0x6500B7)
    static let purple800 = Color(hex: 0x430086)
    static let purple900 = Color(hex: 0x1F043A)
    static let purple950 = Color(hex: 0x0C0217)

    // Red
    static let red50 = Color(hex: 0xFFF8F7)
    static let red100 = Color(hex: 0xFFE9E4)
    static let red200 = Color(hex: 0xFFA7A1)
    static let red300 = Color(hex: 0xFF7572)
    static let red400 = Color(hex: 0xE23A48)
    static let red500 = Color(hex: 0xC4001E)
    static let red600 = Color(hex: 0xC4001E)
    static let red700 = Color(hex: 0x8B0000)
    static let red800 = Color(hex: 0x720000)
    static let red900 = Color(hex: 0x580000)
    static let red950 = Color(hex: 0x230000)

    // Green
    static let green50 = Color(hex: 0xF6FFF4)
    static let green100 = Color(hex: 0xE0FFD9)
    static let green200 = Color(hex: 0x95FFAC)
    static let green300 = Color(hex: 0x5DF29D)
    static let green400 = Color(hex: 0x2ECD7D)
    static let green500 = Color(hex: 0x00A85D)
    static let green600 = Color(hex: 0x009A50)
    static let green700 = Color(hex: 0x008C42)
    static let green800 = Color(hex: 0x005D18)
    static let green900 = Color(hex: 0x003200)
    static let green950 = Color(hex: 0x001400)

    // Blue
    static let blue50 = Color(hex: 0xE6F5FF)
    static let blue100 = Color(hex: 0xC5E8FF)
    static let blue200 = Color(hex: 0x94D5FF)
    static let blue300 = Color(hex: 0x5ABEFF)
    static let blue400 = Color(hex: 0x4297FA)
    static let blue500 = Color(hex: 0x2B70F4)
    static let blue600 = Color(hex: 0x235CC8)
    static let blue700 = Color(hex: 0x1C489C)
    static let blue800 = Color(hex: 0x13326E)
    static let blue900 = Color(hex: 0x0B1C3D)
    static let blue950 = Color(hex: 0x061022)

    // Yellow
    static let yellow50 = Color(hex: 0xFFFBEB)
    static let yellow100 = Color(hex: 0xFFF4CC)
    static let yellow200 = Color(hex: 0xFFE68C)
    static let yellow300 = Color(hex: 0xFFD84C)
    static let yellow400 = Color(hex: 0xFFCF1F)
    static let yellow500 = Color(hex: 0xFFC800)
    static let yellow600 = Color(hex: 0xD9AA00)
    static let yellow700 = Color(hex: 0xAD8800)
    static let yellow800 = Color(hex: 0x7A6000)
    static let yellow900 = Color(hex: 0x473800)
    static let yellow950 = Color(hex: 0x261E00)
}

extension Color {
    init(hex: UInt32) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xFF) / 255,
            green: Double((hex >> 8) & 0xFF) / 255,
            blue: Double(hex & 0xFF) / 255,
            opacity: 1
        )
    }
}
