const native_sdk = @import("native_sdk");
const canvas = native_sdk.canvas;

pub fn designTokens(
    color_scheme: canvas.ColorScheme,
    contrast: canvas.ColorContrast,
) canvas.DesignTokens {
    const light = color_scheme == .light;
    const high = contrast == .high;

    return canvas.DesignTokens.themeWithOverrides(.{
        .color_scheme = color_scheme,
        .contrast = contrast,
        .pack = .house,
    }, .{
        .colors = .{
            .background = if (light) canvas.Color.rgb8(255, 255, 255) else canvas.Color.rgb8(8, 11, 18),
            .surface = if (light) canvas.Color.rgb8(255, 255, 255) else canvas.Color.rgb8(16, 20, 31),
            .surface_subtle = if (light) canvas.Color.rgb8(244, 247, 251) else canvas.Color.rgb8(24, 32, 49),
            .surface_pressed = if (light) canvas.Color.rgb8(231, 237, 247) else canvas.Color.rgb8(36, 48, 74),
            .text = if (light) canvas.Color.rgb8(16, 24, 40) else canvas.Color.rgb8(248, 250, 252),
            .text_muted = if (light) canvas.Color.rgb8(102, 112, 133) else canvas.Color.rgb8(167, 176, 192),
            .border = if (light) canvas.Color.rgb8(208, 213, 221) else canvas.Color.rgb8(51, 65, 85),
            .accent = if (light) canvas.Color.rgb8(21, 94, 239) else canvas.Color.rgb8(132, 173, 255),
            .accent_text = if (light) canvas.Color.rgb8(255, 255, 255) else canvas.Color.rgb8(8, 17, 31),
            .info = if (light) canvas.Color.rgb8(21, 94, 239) else canvas.Color.rgb8(132, 173, 255),
            .focus_ring = if (high)
                (if (light) canvas.Color.rgb8(0, 62, 180) else canvas.Color.rgb8(191, 215, 255))
            else
                (if (light) canvas.Color.rgb8(21, 94, 239) else canvas.Color.rgb8(132, 173, 255)),
        },
        .radius = .{ .sm = 6, .md = 6, .lg = 8, .xl = 12 },
    });
}
