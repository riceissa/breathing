// License: CC0 https://creativecommons.org/publicdomain/zero/1.0/

// We use a self-executing anonymous function to create a separate namespace
// called darkmode. This way any functions we define here won't affect
// other scripts. See https://stackoverflow.com/a/5947280/3422337 . (The
// version here is a bit different because we aren't using jQuery so we don't
// have to pass that as an argument, and modern versions of JavaScript don't
// allow you to redefine undefined so we don't need to keep that as an argument
// either.)
(function(darkmode) {
    // local storage: blank (meaning auto), "auto", "light", or "dark"
    // color argument for the functions below: "auto", "light", or "dark"

    function set_root_color_scheme(color) {
        if (color === "dark") {
            // If the user has specifically chosen this particular website to
            // be in dark mode, then honor that over the OS/browser-level
            // preference.
            document.documentElement.style.setProperty("color-scheme", "dark", "important");
        } else if (color === "light") {
            document.documentElement.style.setProperty("color-scheme", "light", "important");
        } else {
            document.documentElement.style.setProperty("color-scheme", "light dark", "important");
        }
    }

    function set_visual_feedback_color(color) {
        var options_list = ["auto", "light", "dark"];
        var el = document.getElementById(color + "-menu-option");
        el.style.textDecoration = "underline";
        options_list = options_list.filter(x => x !== color);
        options_list.forEach((c) => document.getElementById(c + "-menu-option").style.textDecoration = "none");
    }

    // This function runs every time the menu buttons (auto/light/dark) are
    // clicked.
    darkmode.set_color = function (color) {
        set_root_color_scheme(color);
        localStorage.setItem("color", color);
        set_visual_feedback_color(color);
    };

    // This function runs once on each page load.
    darkmode.set_theme_from_local_storage = function () {
        const site_specific_preferred_color = localStorage.getItem("color") || "auto";
        set_root_color_scheme(site_specific_preferred_color);
        set_visual_feedback_color(site_specific_preferred_color);
    };
}(window.darkmode = window.darkmode || {}));
