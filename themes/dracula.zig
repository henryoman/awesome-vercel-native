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
            .background = if (light) canvas.Color.rgb8(248, 248, 242) else canvas.Color.rgb8(40, 42, 54),
            .surface = if (light) canvas.Color.rgb8(255, 255, 250) else canvas.Color.rgb8(52, 55, 70),
            .surface_subtle = if (light) canvas.Color.rgb8(237, 238, 232) else canvas.Color.rgb8(68, 71, 90),
            .surface_pressed = if (light) canvas.Color.rgb8(225, 226, 220) else canvas.Color.rgb8(80, 83, 104),
            .text = if (light) canvas.Color.rgb8(40, 42, 54) else canvas.Color.rgb8(248, 248, 242),
            .text_muted = if (light) canvas.Color.rgb8(98, 103, 132) else canvas.Color.rgb8(189, 147, 249),
            .border = if (light) canvas.Color.rgb8(202, 204, 214) else canvas.Color.rgb8(98, 114, 164),
            .accent = if (light) canvas.Color.rgb8(98, 114, 164) else canvas.Color.rgb8(189, 147, 249),
            .accent_text = canvas.Color.rgb8(248, 248, 242),
            .destructive = canvas.Color.rgb8(255, 85, 85),
            .destructive_text = canvas.Color.rgb8(40, 42, 54),
            .success = canvas.Color.rgb8(80, 250, 123),
            .success_text = canvas.Color.rgb8(40, 42, 54),
            .warning = canvas.Color.rgb8(255, 184, 108),
            .warning_text = canvas.Color.rgb8(40, 42, 54),
            .info = canvas.Color.rgb8(139, 233, 253),
            .info_text = canvas.Color.rgb8(40, 42, 54),
            .focus_ring = if (high) canvas.Color.rgb8(255, 121, 198) else canvas.Color.rgb8(189, 147, 249),
        },
        .radius = .{ .sm = 6, .md = 8, .lg = 8, .xl = 14 },
    });
}
