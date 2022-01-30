# me
This package was created using the Min-DevKit for Max, an API and supporting tools for writing externals in modern C++.



## Prerequisites

You can use the objects provided in this package as-is.

To code your own objects, or to re-compile existing objects, you will need a compiler:

* On the Mac this means **Xcode 9 or later** (you can get from the App Store for free). 
* On Windows this means **Visual Studio 2017** (you can download a free version from Microsoft). The installer for Visual Studio 2017 offers an option to install Git, which you should choose to do.

You will also need the Min-DevKit, available from the Package Manager inside of Max or [directly from Github](https://github.com/Cycling74/min-devkit).




## Contributors / Acknowledgements

The me is the work of some amazing and creative artists, researchers, and coders.



## Support

For support, please contact the developer of this package.
# ddsp_max_msp



## Compiling

Use cmake and you need to have libtorch downloaded:
```bash
cd ddsp_max_msp
mkdir build
cd build
cmake ../ -DCMAKE_PREFIX_PATH=/path/to/libtorch -DCMAKE_BUILD_TYPE=Release
make install
```


## Models

In max create a message box and use load path_to_model

## Pretrained models

| instrument | realtime | preprocessing | sampling rate |                                  link                                  |
| :--------: | :------: | :-----------: | :-----------: | :--------------------------------------------------------------------: |
| saxophone  |   true   |  `sigmund~`   |     48kHz     | [download](https://nubo.ircam.fr/index.php/s/7AenL27BEaxLkKi/download) |
|   violin   |   true   |  `sigmund~`   |     48kHz     | [download](https://nubo.ircam.fr/index.php/s/f6XB4Kp9onxiNwZ/download) |
<!-- |   violin   |   true   |    `crepe`    |     48kHz     | [download](https://nubo.ircam.fr/index.php/s/LzTsYr8zdqHYdMy/download) | -->
<!-- |   violin   |  false   |    `crepe`    |     48kHz     | [download](https://nubo.ircam.fr/index.php/s/LMFo3eAb3C5by23/download) | -->
