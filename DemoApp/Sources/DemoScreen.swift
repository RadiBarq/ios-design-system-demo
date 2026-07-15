import DesignSystem
import SwiftUI

/// A single screen that consumes DesignSystem tokens exclusively —
/// no hardcoded values. When tokens change (zeroheight → code sync),
/// this screen should visibly update without touching this file.
struct DemoScreen: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: Space.x800) {
                    colorsSection
                    spacingSection
                    avatarsSection
                    buttonsSection
                }
                .padding(Space.x400)
            }
            .background(Colors.backgroundPrimary)
            .navigationTitle("Design System")
        }
    }

    private var colorsSection: some View {
        section("Semantic colors") {
            VStack(alignment: .leading, spacing: Space.x200) {
                swatch("tintPrimary", Colors.tintPrimary)
                swatch("tintPrimaryStrong", Colors.tintPrimaryStrong)
                swatch("tintError", Colors.tintError)
                swatch("tintSuccess", Colors.tintSuccess)
                swatch("tintBlue", Colors.tintBlue)
                swatch("tintYellow", Colors.tintYellow)
            }
        }
    }

    private var spacingSection: some View {
        section("Spacing") {
            VStack(alignment: .leading, spacing: Space.x200) {
                spacingBar("space100", Space.x100)
                spacingBar("space200", Space.x200)
                spacingBar("space400", Space.x400)
                spacingBar("space600", Space.x600)
                spacingBar("space800", Space.x800)
                spacingBar("space1200", Space.x1200)
            }
        }
    }

    private var avatarsSection: some View {
        section("Avatars") {
            HStack(alignment: .bottom, spacing: Space.x400) {
                avatar(AvatarSize.small)
                avatar(AvatarSize.standard)
                avatar(AvatarSize.medium)
                avatar(AvatarSize.large)
            }
        }
    }

    private var buttonsSection: some View {
        section("Buttons") {
            VStack(spacing: Space.x300) {
                Button {} label: {
                    Text("Continue")
                        .foregroundStyle(Colors.labelOnTintPrimary)
                        .frame(maxWidth: .infinity)
                        .frame(height: ButtonSize.cta)
                        .background(Colors.tintPrimary)
                        .clipShape(RoundedRectangle(cornerRadius: Radius.x400))
                }
                Button {} label: {
                    Text("Secondary")
                        .foregroundStyle(Colors.tintPrimary)
                        .frame(maxWidth: .infinity)
                        .frame(height: ButtonSize.secondary)
                        .background(Colors.surfaceSubtle)
                        .clipShape(RoundedRectangle(cornerRadius: Radius.x200))
                }
            }
        }
    }

    private func section(_ title: String, @ViewBuilder content: () -> some View) -> some View {
        VStack(alignment: .leading, spacing: Space.x300) {
            Text(title)
                .font(.headline)
                .foregroundStyle(Colors.textPrimary)
            content()
        }
    }

    private func swatch(_ name: String, _ color: Color) -> some View {
        HStack(spacing: Space.x300) {
            RoundedRectangle(cornerRadius: Radius.x100)
                .fill(color)
                .frame(width: Size.x800, height: Size.x800)
            Text(name)
                .font(.subheadline.monospaced())
                .foregroundStyle(Colors.textPrimary)
        }
    }

    private func spacingBar(_ name: String, _ value: CGFloat) -> some View {
        HStack(spacing: Space.x300) {
            RoundedRectangle(cornerRadius: Radius.x100)
                .fill(Colors.tintPrimary)
                .frame(width: value, height: Size.x500)
            Text("\(name) · \(Int(value))pt")
                .font(.subheadline.monospaced())
                .foregroundStyle(Colors.textPrimary)
        }
    }

    private func avatar(_ size: CGFloat) -> some View {
        Circle()
            .fill(Colors.tintBluePastel)
            .frame(width: size, height: size)
            .overlay(
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()
                    .padding(size / 4)
                    .foregroundStyle(Colors.labelOnTintPrimary)
            )
    }
}

#Preview {
    DemoScreen()
}
