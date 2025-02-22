```

#=============================================================================#
# Manufakture mingw-user-space
#-----------------------------------------------------------------------------#

                              _____        __      __                        
  _____ _____    ____  __ ___/ ____\____  |  | ___/  |_ __ _________   ____  
 /     \\__  \  /    \|  |  \   __\\__  \ |  |/ /\   __\  |  \_  __ \_/ __ \ 
|  Y Y  \/ __ \|   |  \  |  /|  |   / __ \|    <  |  | |  |  /|  | \/\  ___/ 
|__|_|  (____  /___|  /____/ |__|  (____  /__|_ \ |__| |____/ |__|    \___  >
      \/     \/     \/                  \/     \/                         \/

#-----------------------------------------------------------------------------#

#=============================================================================#

```	
	

Manufakture mingw utilities in user-space on secondary drive (L:)


[TOC]


#-----------------------------------------------------------------------------#
# Manufakture mingw-user-space
#-----------------------------------------------------------------------------#


	This is an alternative setup to get a Mingw POSIX cloud developement box.

  If cygwin user-space is not available, we do it in Mingw (Mingw64, Mingw32).

  For maximum compatibility, we use GitBash, which already packages Ming64.
  
	Manufacture mingw installs almost programatically from within an admin shell.


#-----------------------------------------------------------------------------#
# Capabilities:
#-----------------------------------------------------------------------------#


	Capabilities:
		
		- POSIX unified directory file structure
		- sysinternals binaries and applications
		- junction, mklink, psexec, pskill, pslist, psfile, pspasswd
		- zip/unzip, gzip/gunzip, bzip/bunzip
		- httpget, pathed, su


#-----------------------------------------------------------------------------#
# POSIX Structure:
#-----------------------------------------------------------------------------#

	POSIX Structure:

		/windows/		windows installation
		/syswin/		syswin binaries
  	/cygwin/		cygwin binaries 
		/mingw/		  mingw binaries

		/				    main mingw mountpoint 
		/mnt/			  additional mountpoints
		cygdrive/		mounted windows drives

		dev/			  devices (virtual)
		proc/			  processes (virtual)

		var/			  var files (permanent)
		tmp/			  tmp files (volatile)
		
		etc/			  configuration files
		lib/			  runtime libraries

		usr/			  user programs
		bin/			  user binaries
		sbin/			  admin binaries	
		setup/			setup directory
		
		home/			  posix user profiles
		users/			windows user profiles
		
		vault/			private passwd vault
		work/			  work apps and workspaces
		
		share/			shared data, libs, programs 
		srv/			  shared public data, servers
	

#-----------------------------------------------------------------------------#
# Requirements:
#-----------------------------------------------------------------------------#

	Requirements:

    - windows 10/11  x86 or x64(recommended) 
    
    - windows user with local administrator rights
    
    - internet / proxy access and zip/unzip archiver 
    
    - space for mingw in the default drive c:\mingw
    
    - space for syswin in the default drive c:\syswin
    
    
	Prerequisites:

    - GitBash already installed with symlinks

    
    
    - start by exposing the real administrator account

        runas /user:%COMPUTERNAME%\administrator "cmd -c ^net user administrator /active:yes^"

    - login as Administrator and set the password (memorize it!)
    
        runas /user:%COMPUTERNAME%\administrator "cmd -k"
        
        net user administrator <password>
        
   

#-----------------------------------------------------------------------------#
# Installation:
#-----------------------------------------------------------------------------#

	Installation:
        
    - from an interactive admininstrator shell run mingw-install.bat

		mingw-install.bat

	


#-----------------------------------------------------------------------------#
# Configuration:
#-----------------------------------------------------------------------------#



#-----------------------------------------------------------------------------#
# Operation:
#-----------------------------------------------------------------------------#



#-----------------------------------------------------------------------------#
# LICENSE
#-----------------------------------------------------------------------------#


  [LICENSE.txt](LICENSE.txt)

```   

#-----------------------------------------------------------------------------#
# (c) Francis Korning 2024.
#=============================================================================#

```
