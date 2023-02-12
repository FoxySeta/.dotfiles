if status is-interactive
    # Fish greeting
    set -U fish_greeting
    # XDG_RUNTIME_DIR
    if test -z "$XDG_RUNTIME_DIR"
        set -x XDG_RUNTIME_DIR /tmp/$(id -u)-runtime-dir
	if not test -d "$XDG_RUNTIME_DIR"
	    mkdir "$XDG_RUNTIME_DIR"
	    chmod 700 "$XDG_RUNTIME_DIR"
	end
    end
    if [ (tty) = "/dev/tty1" ]
      # PipeWire
      # /usr/libexec/pipewire-launcher &
      #Sway
    	exec dbus-run-session -- sway
    end
end
