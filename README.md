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
# POSIX root:
#-----------------------------------------------------------------------------#

User-space GitBash Mingw places its root in user `AppData/Local/Programs/Git`.

Shared-space GitBash Mingw places its POSIX root dir in `Program Files/Git`.

Standalone MingW likely lives in `c:/MinGW`, occasionally in `c:/Mingw64`. 

If cygwin lives in tandem, it may be useful to make a few reciprocal junctions.




#-----------------------------------------------------------------------------#
# POSIX Structure:
#-----------------------------------------------------------------------------#

    POSIX Structure:

        /windows/         windows installation
        /syswin/          syswin binaries
        /cygwin/          cygwin root ?
        /mingw/           mingw root 

        /                 main mingw mountpoint 
        /mnt/             additional mountpoints

        dev/              devices (virtual)
        proc/             processes (virtual)

        var/              var files (permanent)
        tmp/              tmp files (volatile)
        
        etc/              configuration files
        lib/              runtime libraries

        usr/              user programs
        bin/              user binaries
        sbin/             admin binaries    
        setup/            setup directory
        
        home/             posix user profiles
        users/            windows user profiles
        
        vault/            private passwd vault
        work/             work apps and workspaces
        
        share/            shared data, libs, programs 
        srv/              shared public data, servers
    

#-----------------------------------------------------------------------------#
# Design:
#-----------------------------------------------------------------------------#

GitBash / MSys / MingW provides a bash shell, git, and a minimal toolchain.

Unlike Cygwin it is not a full POSIX environmment nor is it a distribution.

We have to install a bunch of stuff to make it somewhat usable for cloudops.

At minimum we want openssh, openssl, gnutls, gnupg, git, pass, and a vault.

we will want a complete gnu posix toolchain to build gcc-glibc-mingw binaries.

In addition to C/C++ and C# .NET, we want perl, python, php, ruby, go, java.

We want vagrant, puppet, docker, kubernetes, terraform, aws-cli, azure-cli.


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
