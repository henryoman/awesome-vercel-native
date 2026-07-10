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
            .background = if (light) canvas.Color.rgb8(251, 241, 199) else canvas.Color.rgb8(40, 40, 40),
            .surface = if (light) canvas.Color.rgb8(242, 229, 188) else canvas.Color.rgb8(50, 48, 47),
            .surface_subtle = if (light) canvas.Color.rgb8(235, 219, 178) else canvas.Color.rgb8(60, 56, 54),
            .surface_pressed = if (light) canvas.Color.rgb8(213, 196, 161) else canvas.Color.rgb8(80, 73, 69),
            .text = if (light) canvas.Color.rgb8(60, 56, 54) else canvas.Color.rgb8(251, 241, 199),
            .text_muted = if (light) canvas.Color.rgb8(124, 111, 100) else canvas.Color.rgb8(168, 153, 132),
            .border = if (light) canvas.Color.rgb8(189, 174, 147) else canvas.Color.rgb8(102, 92, 84),
            .accent = if (light) canvas.Color.rgb8(69, 133, 136) else canvas.Color.rgb8(131, 165, 152),
            .accent_text = if (light) canvas.Color.rgb8(251, 241, 199) else canvas.Color.rgb8(40, 40, 40),
            .destructive = if (light) canvas.Color.rgb8(204, 36, 29) else canvas.Color.rgb8(251, 73, 52),
            .success = if (light) canvas.Color.rgb8(104, 157, 106) else canvas.Color.rgb8(184, 187, 38),
            .warning = if (light) canvas.Color.rgb8(215, 153, 33) else canvas.Color.rgb8(250, 189, 47),
            .info = if (light) canvas.Color.rgb8(69, 133, 136) else canvas.Color.rgb8(131, 165, 152),
            .focus_ring = if (high) canvas.Color.rgb8(177, 98, 134) else canvas.Color.rgb8(69, 133, 136),
        },
        .radius = .{ .sm = 4, .md = 5, .lg = 7, .xl = 10 },
    });
}
