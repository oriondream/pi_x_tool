# Introduction #

This repository automate the setting up process for the cross compilation tool chain for Raspberry Pi. For more behind-the-scenes, it is encouraged to visit the original post https://stackoverflow.com/a/19269715/768817 by Stenyg@stackoverflow

# Prerequisites #

1. The compiling machine and the Raspberry Pi must be on the same network.

2. Enable SSH on the Raspberry Pi
   ```
   sudo raspi-config
   ```
   Select Interface Options -> P2 SSH and follow on screen instructions.

# Main Procedure #

1. Clone the repository

    ```
    git clone http://github.com/oriondream/pi_x_tool.git
    ```

2. Run the configure script

    ```
    cd pi_x_tool
    ./configure
    ```

# Test #
   ```
   cd example
   mkdir build
   cd build
   cmake -D CMAKE_TOOLCHAIN_FILE=$HOME/pi_x_tool/pi.cmake ../
   make
   scp CMakeHelloWorld pi@192.168.1.PI:/home/pi/
   ssh pi@192.168.1.PI ./CMakeHelloWorld
   ```
