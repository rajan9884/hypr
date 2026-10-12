-- ──────────────────────────────────────────────
--   Monitors & Environment (Hyprland Lua — 0.55+)
-- ──────────────────────────────────────────────

-- ── Monitor ──────────────────────────────────
-- HDR enabled: Samsung ATNA40YK11-0 OLED (10-bit, BT2020, ST2084 PQ, 616 nits max)
-- Verified via edid-decode: HDR Static Metadata present, so auto-detect works.
-- cm="hdr" puts desktop in HDR, bitdepth=10 for 10-bit output.
hl.monitor({ output = "eDP-1", mode = "2880x1800@90", position = "0x0", scale = 2, bitdepth = 10, cm = "hdr", supports_hdr = 1, supports_wide_color = 1 })
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1 })

-- ── Environment ──────────────────────────────
hl.env("XCURSOR_SIZE", "24")
hl.env("XCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")

-- ── Pure Wayland Session (Strictly No X11 / XWayland) ──
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("GDK_BACKEND", "wayland")
hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")
hl.env("MOZ_ENABLE_WAYLAND", "1")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")
hl.env("OZONE_PLATFORM", "wayland")
-- Void / Intel Iris Xe (13th Gen Raptor Lake, iHD driver)
hl.env("LIBVA_DRIVER_NAME", "iHD")
