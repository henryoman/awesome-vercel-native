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
            .background = if (light) canvas.Color.rgb8(255, 255, 255) else canvas.Color.rgb8(13, 17, 23),
            .surface = if (light) canvas.Color.rgb8(246, 248, 250) else canvas.Color.rgb8(22, 27, 34),
            .surface_subtle = if (light) canvas.Color.rgb8(234, 238, 242) else canvas.Color.rgb8(33, 38, 45),
            .surface_pressed = if (light) canvas.Color.rgb8(221, 226, 232) else canvas.Color.rgb8(48, 54, 61),
            .text = if (light) canvas.Color.rgb8(36, 41, 47) else canvas.Color.rgb8(230, 237, 243),
            .text_muted = if (light) canvas.Color.rgb8(87, 96, 106) else canvas.Color.rgb8(125, 133, 144),
            .border = if (light) canvas.Color.rgb8(208, 215, 222) else canvas.Color.rgb8(48, 54, 61),
            .accent = if (light) canvas.Color.rgb8(9, 105, 218) else canvas.Color.rgb8(47, 129, 247),
            .accent_text = canvas.Color.rgb8(255, 255, 255),
            .destructive = if (light) canvas.Color.rgb8(207, 34, 46) else canvas.Color.rgb8(248, 81, 73),
            .success = if (light) canvas.Color.rgb8(26, 127, 55) else canvas.Color.rgb8(63, 185, 80),
            .warning = if (light) canvas.Color.rgb8(154, 103, 0) else canvas.Color.rgb8(187, 128, 9),
            .info = if (light) canvas.Color.rgb8(9, 105, 218) else canvas.Color.rgb8(47, 129, 247),
            .focus_ring = if (high)
                (if (light) canvas.Color.rgb8(1, 80, 170) else canvas.Color.rgb8(88, 166, 255))
            else
                (if (light) canvas.Color.rgb8(9, 105, 218) else canvas.Color.rgb8(47, 129, 247)),
        },
        .radius = .{ .sm = 6, .md = 6, .lg = 8, .xl = 12 },
    });
}
