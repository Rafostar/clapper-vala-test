int main (string[] argv) {
  // Network streaming (especially adaptive) works better with playbin3
  GLib.Environment.set_variable ("CLAPPER_USE_PLAYBIN3", "1", false);

  // Initialize Clapper library
  Clapper.init (ref argv);

  var app = new Adw.Application ("com.github.rafostar.ClapperValaTest", GLib.ApplicationFlags.DEFAULT_FLAGS);

  app.startup.connect (() => {
    var style_manager = Adw.StyleManager.get_default ();
    style_manager.set_color_scheme (Adw.ColorScheme.FORCE_DARK);
  });
  app.activate.connect (() => {
    var window = new ClapperValaTestAppWindow (app);
    window.present ();
  });

  return app.run (argv);
}
