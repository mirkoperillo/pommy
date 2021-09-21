using Gtk;
using AppIndicator;

public class Demo.HelloIndicator : GLib.Object {

	public static int main(string[] args) {
		Gtk.init(ref args);

		// check input length == 2
		if(args.length < 2) {
			stderr.printf("Error options\n");
			return -1;
		}
		
		var sessionInMinutes = int.parse(args[1]);
		var message = "STOP!";
		if(args.length == 3) {
			message = args[2];
		}
		
		const string APPLICATION_ID = "pommy";
		
		Notify.init(APPLICATION_ID);
				
		var indicator = new Indicator(APPLICATION_ID, "/usr/share/pommy/stopwatch.svg",
				                      IndicatorCategory.APPLICATION_STATUS);
		if (!(indicator is Indicator)) return -1;

		indicator.set_status(IndicatorStatus.ACTIVE);
		indicator.set_label(sessionInMinutes.to_string (), "");
		
		var menu = new Gtk.Menu();
		indicator.set_menu(menu);
		
        var time = new TimeoutSource(60000);

		var counter = sessionInMinutes;
		time.set_callback(() => {
			counter--;
			if(counter == 0) {
				try {
					Notify.Notification notification = new Notify.Notification ("", message, null);
					notification.set_timeout(3000);
					notification.show ();
				} catch (Error e) {
					error ("Error: %s", e.message);
				}
				Gtk.main_quit();
				
				return false;
			} else {
				indicator.set_label(counter.to_string (), "");
				return true;
			}
		});

		time.attach(null);
		
		Gtk.main();
		return 0;
	
	}
}
