{config, pkgs, ...}:
let 
    opcaity = "DE"; # Hacky Hex for rgba(x,y,z,)
in
{
  programs.wlogout.style = with config.colorScheme.colors ''
    * {
	    background-image: none;
    }
    window {
	    background-color: #${base03}DE;
    }
    button {
	color: #FFFFFF;
	    /* background-color: #1E1E1E; */
	    border-style: solid;
	    border-width: 2px;
	    background-repeat: no-repeat;
	    background-position: center;
	    background-size: 25%;
    }

    button:focus, button:active, button:hover {
	    background-color: #${base0C};
	    outline-style: none;
    }

    #lock {
	background-image: image(url("/usr/share/wlogout/icons/lock.png"), url("/usr/local/share/wlogout/icons/lock.png"));
    }

    #logout {
	background-image: image(url("/usr/share/wlogout/icons/logout.png"), url("/usr/local/share/wlogout/icons/logout.png"));
    }

    #suspend {
	background-image: image(url("/usr/share/wlogout/icons/suspend.png"), url("/usr/local/share/wlogout/icons/suspend.png"));
    }

    #hibernate {
	background-image: image(url("/usr/share/wlogout/icons/hibernate.png"), url("/usr/local/share/wlogout/icons/hibernate.png"));
    }

    #shutdown {
	background-image: image(url("/usr/share/wlogout/icons/shutdown.png"), url("/usr/local/share/wlogout/icons/shutdown.png"));
    }

    #reboot {
	background-image: image(url("/usr/share/wlogout/icons/reboot.png"), url("/usr/local/share/wlogout/icons/reboot.png"));
    }

  ''; 
}
