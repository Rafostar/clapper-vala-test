[GtkTemplate (ui = "/com/github/rafostar/ClapperValaTest/ui/clapper-vala-test.ui")]
public class ClapperValaTestAppWindow: Adw.ApplicationWindow {
  [GtkChild] unowned ClapperGtk.Video video;
  [GtkChild] unowned Gtk.Entry text_entry;

  public ClapperValaTestAppWindow (Adw.Application app) {
    Object (application: app);

    // Lets add MPRIS functionality if OS supports it
    if (Clapper.HAVE_MPRIS) {
      var mpris = new Clapper.Mpris (
        "org.mpris.MediaPlayer2.ClapperValaTest",
        "Clapper Vala Test", null);
      video.player.add_feature (mpris);
    }
  }

  private void open_media_uri (string uri) {
    // Create new ClapperMediaItem for given URI
    var item = new Clapper.MediaItem (uri);

    // Add item to queue and select it for playback now
    video.player.queue.add_item (item);
    video.player.queue.select_item (item);

    // If player was not already playing, play it
    video.player.play ();
  }

  [GtkCallback]
  private void open_clicked_cb (Gtk.Button source) {
    open_media_uri (text_entry.buffer.text);
  }
}
