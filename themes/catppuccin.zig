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
        .pack = .geist,
    }, .{
        .colors = .{
            .background = if (light) canvas.Color.rgb8(239, 241, 245) else canvas.Color.rgb8(30, 30, 46),
            .surface = if (light) canvas.Color.rgb8(230, 233, 239) else canvas.Color.rgb8(49, 50, 68),
            .surface_subtle = if (light) canvas.Color.rgb8(220, 224, 232) else canvas.Color.rgb8(69, 71, 90),
            .surface_pressed = if (light) canvas.Color.rgb8(204, 208, 218) else canvas.Color.rgb8(88, 91, 112),
            .text = if (light) canvas.Color.rgb8(76, 79, 105) else canvas.Color.rgb8(205, 214, 244),
            .text_muted = if (light) canvas.Color.rgb8(108, 111, 133) else canvas.Color.rgb8(166, 173, 200),
            .border = if (light) canvas.Color.rgb8(188, 192, 204) else canvas.Color.rgb8(88, 91, 112),
            .accent = if (light) canvas.Color.rgb8(136, 57, 239) else canvas.Color.rgb8(203, 166, 247),
            .accent_text = if (light) canvas.Color.rgb8(255, 255, 255) else canvas.Color.rgb8(30, 30, 46),
            .destructive = if (light) canvas.Color.rgb8(210, 15, 57) else canvas.Color.rgb8(243, 139, 168),
            .success = if (light) canvas.Color.rgb8(64, 160, 43) else canvas.Color.rgb8(166, 227, 161),
            .warning = if (light) canvas.Color.rgb8(223, 142, 29) else canvas.Color.rgb8(249, 226, 175),
            .info = if (light) canvas.Color.rgb8(4, 165, 229) else canvas.Color.rgb8(137, 220, 235),
            .focus_ring = if (high)
                (if (light) canvas.Color.rgb8(114, 35, 204) else canvas.Color.rgb8(245, 194, 231))
            else
                (if (light) canvas.Color.rgb8(136, 57, 239) else canvas.Color.rgb8(203, 166, 247)),
        },
        .radius = .{ .sm = 8, .md = 10, .lg = 12, .xl = 16 },
    });
}
