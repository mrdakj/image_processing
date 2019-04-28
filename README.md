# RS029-image-processing
image processing

![Alt text](screenshots/screenshot_6.01.2019.jpg?raw=true "ImageProcessing")

***
## :package: Installation
:exclamation: Requirements: OpenCV (hdf5, vtk), Qt, Font Awesome

OpenCV: https://github.com/opencv/opencv
```sh
git clone https://github.com/opencv/opencv 
cd opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=Release -D OPENCV_GENERATE_PKGCONFIG=YES -D CMAKE_INSTALL_PREFIX=/usr/local -WITH_QT ..
make install
```

### Manual

1. Clone this repository somewhere on your machine.

    ```sh
    git clone https://github.com/MATF-RS19/RS029-image-processing.git ~/

    ```
2. Compile

    ```sh
    cd RS029-image-processing/qt/ImageProcessing/build/
	make

    ```

3. Start

    ```sh
	./ImageProcessing

    ```

***

## GUI consists of several buttons:

 ### Open 
    open image
 ### Save
    save image after editing
 ### Binarization
    filter for turning image into black and white
 ### Posterize 
    image is painted in selected number of colors using K-means algorithm
 ### Edge detection 
    edges of the objects represented in the image are detected
 ### Compression 
    PCA algorithm is used for image compression
 ### Distortion 
    4 points are selected (basically, object in the image which distortion is willing to be fixed), and another 4 points (basically, the position of new, fixed object). The result is image with fixed projective distortion.
