CXXFLAGS="-O1 -fno-omit-frame-pointer -gline-tables-only -DFUZZING_BUILD_MODE_UNSAFE_FOR_PRODUCTION -stdlib=libc++ -fsanitize=address -fsanitize-address-use-after-scope"
CXXFLAGS="$CXXFLAGS -stdlib=libc++ -pthread" LDFLAGS="-stdlib=libc++" ./bootstrap.sh --with-toolset=clang --prefix=/usr;./b2 toolset=clang cxxflags="$CXXFLAGS -stdlib=libc++ -pthread" linkflags="-stdlib=libc++ -pthread" headers;
clang++ $CXXFLAGS -I . ../boost_regex_fuzzer.cc libs/regex/src/*.cpp $LIB_FUZZING_ENGINE -o boost_regex_fuzzer
