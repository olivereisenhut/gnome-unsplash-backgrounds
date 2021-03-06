class GsettingConfigurator : GLib.Object { 
    private GLib.Settings settings;

    public string  wallpaper_uri {
        owned get { return this.settings.get_string ("picture-uri"); }
        set { this.settings.set_string ("picture-uri", value); }
    }

    public GsettingConfigurator () {
        this.settings = new GLib.Settings ("org.gnome.desktop.background");
    }

    ~GsettingConfigurator () {}
}