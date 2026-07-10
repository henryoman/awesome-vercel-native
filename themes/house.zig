const native_sdk = @import("native_sdk");
const canvas = native_sdk.canvas;

pub fn designTokens(
    color_scheme: canvas.ColorScheme,
    contrast: canvas.ColorContrast,
) canvas.DesignTokens {
    return canvas.DesignTokens.theme(.{
        .color_scheme = color_scheme,
        .contrast = contrast,
        .pack = .house,
    });
}
