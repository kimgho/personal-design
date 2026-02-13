export const primitiveColors = {
  neutral: {
    0: "#ffffff",
    50: "#f8fafc",
    100: "#f1f5f9",
    200: "#e2e8f0",
    300: "#cbd5e1",
    400: "#94a3b8",
    500: "#64748b",
    600: "#475569",
    700: "#334155",
    800: "#1e293b",
    900: "#0f172a",
    1000: "#020617",
  },
  brand: {
    50: "#eef7ff",
    100: "#d9edff",
    200: "#b8dcff",
    300: "#8ec4ff",
    400: "#63a8ff",
    500: "#3b82f6",
    600: "#2563eb",
    700: "#1d4ed8",
    800: "#1e40af",
    900: "#1e3a8a",
  },
  red: {
    50: "#fef2f2",
    500: "#ef4444",
    700: "#b91c1c",
  },
  green: {
    50: "#f0fdf4",
    500: "#22c55e",
    700: "#15803d",
  },
  amber: {
    50: "#fffbeb",
    500: "#f59e0b",
    700: "#b45309",
  },
};

export const semanticColors = {
  bg: {
    canvas: primitiveColors.neutral[0],
    surface: primitiveColors.neutral[50],
    elevated: primitiveColors.neutral[0],
  },
  fg: {
    primary: primitiveColors.neutral[900],
    secondary: primitiveColors.neutral[700],
    muted: primitiveColors.neutral[500],
    inverse: primitiveColors.neutral[0],
  },
  border: {
    default: primitiveColors.neutral[200],
    muted: primitiveColors.neutral[300],
    focus: primitiveColors.brand[500],
  },
  interactive: {
    primary: {
      bg: primitiveColors.brand[600],
      bgHover: primitiveColors.brand[700],
      bgPressed: primitiveColors.brand[800],
      fg: primitiveColors.neutral[0],
    },
    ghost: {
      fg: primitiveColors.brand[600],
      bgHover: primitiveColors.brand[50],
    },
  },
  status: {
    success: {
      bg: primitiveColors.green[50],
      fg: primitiveColors.green[700],
    },
    warning: {
      bg: primitiveColors.amber[50],
      fg: primitiveColors.amber[700],
    },
    danger: {
      bg: primitiveColors.red[50],
      fg: primitiveColors.red[700],
    },
  },
};
