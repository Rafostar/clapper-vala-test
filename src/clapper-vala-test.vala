[GtkTemplate (ui = "/com/github/rafostar/ClapperValaTest/ui/clapper-vala-test.ui")]
public class ClapperValaTestAppWindow: Adw.ApplicationWindow {
  [GtkChild] unowned ClapperGtk.Video video;
  [GtkChild] unowned Gtk.Entry text_entry;

  public ClapperValaTestAppWindow (Adw.Application app) {
    Object (application: app);

    // Lets add MPRIS functionality if Clapper was built with it
#if HAVE_MPRIS
    var mpris = new Clapper.Mpris (
      "org.mpris.MediaPlayer2.ClapperValaTest",
      "Clapper Vala Test", null);
    video.player.add_feature (mpris);
#endif
  }

  private void open_media_uri (string uri) {
    // Create new ClapperMediaItem for given URI
    var item = new Clapper.MediaItem (uri);

    // Add item to queue and select it for playback now
    video.player.queue.add_item (item);
    video.player.queue.select_item (item);

    // Start playback if player was not already playing
    video.player.play ();
  }

  [GtkCallback]
  private void open_clicked_cb (Gtk.Button source) {
    open_media_uri (text_entry.buffer.text);
  }
}
