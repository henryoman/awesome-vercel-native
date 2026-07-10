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
            .background = if (light) canvas.Color.rgb8(213, 214, 219) else canvas.Color.rgb8(26, 27, 38),
            .surface = if (light) canvas.Color.rgb8(231, 232, 237) else canvas.Color.rgb8(31, 35, 53),
            .surface_subtle = if (light) canvas.Color.rgb8(203, 205, 214) else canvas.Color.rgb8(41, 45, 66),
            .surface_pressed = if (light) canvas.Color.rgb8(188, 191, 204) else canvas.Color.rgb8(55, 60, 87),
            .text = if (light) canvas.Color.rgb8(52, 59, 88) else canvas.Color.rgb8(192, 202, 245),
            .text_muted = if (light) canvas.Color.rgb8(86, 95, 137) else canvas.Color.rgb8(169, 177, 214),
            .border = if (light) canvas.Color.rgb8(178, 183, 205) else canvas.Color.rgb8(65, 72, 104),
            .accent = canvas.Color.rgb8(122, 162, 247),
            .accent_text = canvas.Color.rgb8(26, 27, 38),
            .destructive = canvas.Color.rgb8(247, 118, 142),
            .success = canvas.Color.rgb8(158, 206, 106),
            .warning = canvas.Color.rgb8(224, 175, 104),
            .info = canvas.Color.rgb8(125, 207, 255),
            .focus_ring = if (high) canvas.Color.rgb8(187, 154, 247) else canvas.Color.rgb8(122, 162, 247),
        },
        .radius = .{ .sm = 6, .md = 8, .lg = 10, .xl = 14 },
    });
}
