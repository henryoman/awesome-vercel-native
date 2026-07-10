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
            .background = if (light) canvas.Color.rgb8(250, 244, 237) else canvas.Color.rgb8(25, 23, 36),
            .surface = if (light) canvas.Color.rgb8(255, 250, 243) else canvas.Color.rgb8(31, 29, 46),
            .surface_subtle = if (light) canvas.Color.rgb8(242, 233, 222) else canvas.Color.rgb8(38, 35, 58),
            .surface_pressed = if (light) canvas.Color.rgb8(223, 218, 217) else canvas.Color.rgb8(49, 45, 75),
            .text = if (light) canvas.Color.rgb8(87, 82, 121) else canvas.Color.rgb8(224, 222, 244),
            .text_muted = if (light) canvas.Color.rgb8(121, 117, 147) else canvas.Color.rgb8(144, 140, 170),
            .border = if (light) canvas.Color.rgb8(214, 207, 198) else canvas.Color.rgb8(64, 61, 82),
            .accent = if (light) canvas.Color.rgb8(144, 122, 169) else canvas.Color.rgb8(196, 167, 231),
            .accent_text = if (light) canvas.Color.rgb8(255, 250, 243) else canvas.Color.rgb8(25, 23, 36),
            .destructive = if (light) canvas.Color.rgb8(180, 99, 122) else canvas.Color.rgb8(235, 111, 146),
            .success = if (light) canvas.Color.rgb8(40, 105, 131) else canvas.Color.rgb8(49, 116, 143),
            .warning = if (light) canvas.Color.rgb8(234, 157, 52) else canvas.Color.rgb8(246, 193, 119),
            .info = if (light) canvas.Color.rgb8(86, 148, 159) else canvas.Color.rgb8(156, 207, 216),
            .focus_ring = if (high) canvas.Color.rgb8(180, 99, 122) else canvas.Color.rgb8(196, 167, 231),
        },
        .radius = .{ .sm = 8, .md = 10, .lg = 12, .xl = 18 },
    });
}
