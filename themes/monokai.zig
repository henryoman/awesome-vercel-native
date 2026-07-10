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
            .background = if (light) canvas.Color.rgb8(250, 250, 244) else canvas.Color.rgb8(39, 40, 34),
            .surface = if (light) canvas.Color.rgb8(242, 242, 232) else canvas.Color.rgb8(62, 61, 50),
            .surface_subtle = if (light) canvas.Color.rgb8(232, 232, 220) else canvas.Color.rgb8(73, 72, 60),
            .surface_pressed = if (light) canvas.Color.rgb8(218, 218, 204) else canvas.Color.rgb8(87, 86, 72),
            .text = if (light) canvas.Color.rgb8(39, 40, 34) else canvas.Color.rgb8(248, 248, 242),
            .text_muted = if (light) canvas.Color.rgb8(91, 91, 80) else canvas.Color.rgb8(197, 197, 185),
            .border = if (light) canvas.Color.rgb8(199, 199, 184) else canvas.Color.rgb8(117, 113, 94),
            .accent = if (light) canvas.Color.rgb8(102, 115, 0) else canvas.Color.rgb8(166, 226, 46),
            .accent_text = if (light) canvas.Color.rgb8(255, 255, 255) else canvas.Color.rgb8(39, 40, 34),
            .destructive = canvas.Color.rgb8(249, 38, 114),
            .success = canvas.Color.rgb8(166, 226, 46),
            .warning = canvas.Color.rgb8(253, 151, 31),
            .info = canvas.Color.rgb8(102, 217, 239),
            .focus_ring = if (high) canvas.Color.rgb8(249, 38, 114) else canvas.Color.rgb8(102, 217, 239),
        },
        .radius = .{ .sm = 4, .md = 6, .lg = 8, .xl = 12 },
    });
}
