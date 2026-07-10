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
            .background = if (light) canvas.Color.rgb8(236, 239, 244) else canvas.Color.rgb8(46, 52, 64),
            .surface = if (light) canvas.Color.rgb8(229, 233, 240) else canvas.Color.rgb8(59, 66, 82),
            .surface_subtle = if (light) canvas.Color.rgb8(216, 222, 233) else canvas.Color.rgb8(67, 76, 94),
            .surface_pressed = if (light) canvas.Color.rgb8(204, 212, 226) else canvas.Color.rgb8(76, 86, 106),
            .text = if (light) canvas.Color.rgb8(46, 52, 64) else canvas.Color.rgb8(236, 239, 244),
            .text_muted = if (light) canvas.Color.rgb8(76, 86, 106) else canvas.Color.rgb8(216, 222, 233),
            .border = if (light) canvas.Color.rgb8(191, 199, 213) else canvas.Color.rgb8(76, 86, 106),
            .accent = canvas.Color.rgb8(94, 129, 172),
            .accent_text = canvas.Color.rgb8(236, 239, 244),
            .success = canvas.Color.rgb8(163, 190, 140),
            .warning = canvas.Color.rgb8(235, 203, 139),
            .destructive = canvas.Color.rgb8(191, 97, 106),
            .info = canvas.Color.rgb8(136, 192, 208),
            .focus_ring = if (high) canvas.Color.rgb8(180, 142, 173) else canvas.Color.rgb8(136, 192, 208),
        },
        .radius = .{ .sm = 6, .md = 7, .lg = 8, .xl = 12 },
    });
}
