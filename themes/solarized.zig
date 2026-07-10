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
            .background = if (light) canvas.Color.rgb8(253, 246, 227) else canvas.Color.rgb8(0, 43, 54),
            .surface = if (light) canvas.Color.rgb8(238, 232, 213) else canvas.Color.rgb8(7, 54, 66),
            .surface_subtle = if (light) canvas.Color.rgb8(238, 232, 213) else canvas.Color.rgb8(12, 64, 76),
            .surface_pressed = if (light) canvas.Color.rgb8(224, 216, 190) else canvas.Color.rgb8(20, 78, 92),
            .text = if (light) canvas.Color.rgb8(7, 54, 66) else canvas.Color.rgb8(253, 246, 227),
            .text_muted = if (light) canvas.Color.rgb8(101, 123, 131) else canvas.Color.rgb8(147, 161, 161),
            .border = if (light) canvas.Color.rgb8(211, 203, 180) else canvas.Color.rgb8(42, 93, 105),
            .accent = if (light) canvas.Color.rgb8(38, 139, 210) else canvas.Color.rgb8(42, 161, 152),
            .accent_text = canvas.Color.rgb8(255, 255, 255),
            .info = canvas.Color.rgb8(38, 139, 210),
            .focus_ring = if (high) canvas.Color.rgb8(181, 137, 0) else canvas.Color.rgb8(38, 139, 210),
        },
        .radius = .{ .sm = 5, .md = 6, .lg = 8, .xl = 12 },
    });
}
