CXX     = g++
CXXFLAGS = -std=c++17 -I include
LDLIBS  = -lstdc++fs `pkg-config opencv4 --cflags --libs` -pthread 
WFLAGS = -Wall -Wextra -O3

kmeans: src/kmeans.cpp image.o
	$(CXX) -o $@ $^ $(CXXFLAGS) $(WFLAGS) $(LDLIBS) 

pca: src/pca.cpp image.o
	$(CXX) -o $@ $^ $(CXXFLAGS) $(WFLAGS) $(LDLIBS) 

canny: src/canny.cpp image.o
	$(CXX) -o $@ $^ $(CXXFLAGS) $(WFLAGS) $(LDLIBS) 

binarization_fcm: src/binarization_fcm.cpp image.o 
	$(CXX) -o $@ $^ $(CXXFLAGS) $(WFLAGS) $(LDLIBS) 

binarization_kmeans: src/binarization_kmeans.cpp image.o
	$(CXX) -o $@ $^ $(CXXFLAGS) $(WFLAGS) $(LDLIBS) 


fuzzy_edge_detection: src/fuzzy_edge_detection.cpp image.o
	$(CXX) -o $@ $^ $(CXXFLAGS) $(WFLAGS) $(LDLIBS) 


distortion: src/distortion.cpp image.o
	$(CXX) -o $@ $^ $(CXXFLAGS) $(WFLAGS) $(LDLIBS) 


image.o: include/image.cpp include/image.hpp
	$(CXX) -c $^ $(CXXFLAGS) $(WFLAGS) $(LDLIBS) 



.PHONY: clean

clean:
	rm -rf pca distortion canny binarization *.o
