int main (string[] argv) {
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
