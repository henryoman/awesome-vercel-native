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
            .background = if (light) canvas.Color.rgb8(251, 251, 252) else canvas.Color.rgb8(13, 15, 18),
            .surface = if (light) canvas.Color.rgb8(255, 255, 255) else canvas.Color.rgb8(20, 23, 27),
            .surface_subtle = if (light) canvas.Color.rgb8(240, 241, 243) else canvas.Color.rgb8(29, 33, 39),
            .surface_pressed = if (light) canvas.Color.rgb8(222, 223, 227) else canvas.Color.rgb8(42, 48, 56),
            .text = if (light) canvas.Color.rgb8(21, 22, 25) else canvas.Color.rgb8(244, 245, 246),
            .text_muted = if (light) canvas.Color.rgb8(95, 99, 109) else canvas.Color.rgb8(167, 171, 179),
            .border = if (light) canvas.Color.rgba8(21, 22, 25, 41) else canvas.Color.rgba8(244, 245, 246, 36),
            .accent = if (light) canvas.Color.rgb8(47, 51, 58) else canvas.Color.rgb8(231, 233, 237),
            .accent_text = if (light) canvas.Color.rgb8(255, 255, 255) else canvas.Color.rgb8(13, 15, 18),
            .info = if (light) canvas.Color.rgb8(37, 99, 235) else canvas.Color.rgb8(138, 180, 255),
            .focus_ring = if (high)
                (if (light) canvas.Color.rgb8(0, 0, 0) else canvas.Color.rgb8(255, 255, 255))
            else
                (if (light) canvas.Color.rgb8(37, 99, 235) else canvas.Color.rgb8(138, 180, 255)),
        },
        .metrics = .{
            .control_height_sm = 28,
            .control_height = 36,
            .control_height_lg = 44,
            .button_inset_sm = 6,
            .button_inset = 9,
            .button_inset_lg = 12,
        },
    });
}
