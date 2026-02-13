import { createGlobalTheme } from "@vanilla-extract/css";
import { semanticColors } from "./colors";
import { space } from "./space";
import { typography } from "./typography";

import { radii } from "./radius";

export const vars = createGlobalTheme(":root", {
  colors: semanticColors,
  space,
  typography,
  radii,
});
