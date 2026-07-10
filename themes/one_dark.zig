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
            .background = if (light) canvas.Color.rgb8(250, 250, 250) else canvas.Color.rgb8(40, 44, 52),
            .surface = if (light) canvas.Color.rgb8(255, 255, 255) else canvas.Color.rgb8(33, 37, 43),
            .surface_subtle = if (light) canvas.Color.rgb8(235, 236, 240) else canvas.Color.rgb8(49, 54, 63),
            .surface_pressed = if (light) canvas.Color.rgb8(220, 222, 228) else canvas.Color.rgb8(62, 68, 80),
            .text = if (light) canvas.Color.rgb8(56, 58, 66) else canvas.Color.rgb8(171, 178, 191),
            .text_muted = if (light) canvas.Color.rgb8(105, 109, 124) else canvas.Color.rgb8(130, 137, 151),
            .border = if (light) canvas.Color.rgb8(202, 205, 214) else canvas.Color.rgb8(80, 88, 102),
            .accent = canvas.Color.rgb8(97, 175, 239),
            .accent_text = canvas.Color.rgb8(33, 37, 43),
            .destructive = canvas.Color.rgb8(224, 108, 117),
            .success = canvas.Color.rgb8(152, 195, 121),
            .warning = canvas.Color.rgb8(229, 192, 123),
            .info = canvas.Color.rgb8(86, 182, 194),
            .focus_ring = if (high) canvas.Color.rgb8(198, 120, 221) else canvas.Color.rgb8(97, 175, 239),
        },
        .radius = .{ .sm = 5, .md = 6, .lg = 8, .xl = 12 },
    });
}
