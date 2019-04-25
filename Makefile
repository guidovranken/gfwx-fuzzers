all : fuzzer-encoder fuzzer-decoder

fuzzer-encoder : encoder.cpp
	$(CXX) $(CXXFLAGS) -std=c++17 -D_GLIBCXX_DEBUG -Wall -Wextra -I fuzzing-headers/include encoder.cpp $(LIB_FUZZING_ENGINE) -o fuzzer-encoder
fuzzer-decoder : decoder.cpp
	$(CXX) $(CXXFLAGS) -std=c++17 -D_GLIBCXX_DEBUG -Wall -Wextra -I fuzzing-headers/include decoder.cpp $(LIB_FUZZING_ENGINE) -o fuzzer-decoder
