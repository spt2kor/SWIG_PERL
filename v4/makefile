#online links : https://makefiletutorial.com/
hello:
	echo "its FAST2 - v4, try commands [ str , vec ]  "

str: perl/str.pl all
	perl perl/str.pl

vec: perl/vector.pl all
	perl perl/vector.pl

#=========================================== test code compilation

generated_files/obj/str.o: cpp/str.cpp cpp/str.h
	g++ -c -D_REENTRANT -D_GNU_SOURCE -DPERL_USE_SAFE_PUTENV -fno-strict-aliasing -pipe -fstack-protector -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -O2 -fPIC -m64  cpp/str.cpp -o generated_files/obj/str.o


generated_files/obj/vect.o: cpp/vect.cpp cpp/vect.h
	g++ -c -D_REENTRANT -D_GNU_SOURCE -DPERL_USE_SAFE_PUTENV -fno-strict-aliasing -pipe -fstack-protector -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -O2 -fPIC -m64  cpp/vect.cpp -o generated_files/obj/vect.o

#=========================================== SWIG file compilation
generated_files/STDLib_wrap.cpp: swig/STDLib.i cpp/str.cpp cpp/str.h
	swig -c++ -perl -outdir generated_files -o generated_files/STDLib_wrap.cpp swig/STDLib.i

generated_files/obj/STDLib_wrap.o: generated_files/STDLib_wrap.cpp
	g++ -c -Wno-literal-suffix -D_REENTRANT -D_GNU_SOURCE -DPERL_USE_SAFE_PUTENV -fno-strict-aliasing -pipe -fstack-protector -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -O2 -fPIC -m64 -I /opt/perl_5.18.2/linux50_64/lib/CORE/ generated_files/STDLib_wrap.cpp -I cpp/ -o generated_files/obj/STDLib_wrap.o

generated_files/STDLib.so: generated_files/obj/vect.o generated_files/obj/str.o  generated_files/obj/STDLib_wrap.o
	g++ -shared generated_files/obj/vect.o generated_files/obj/str.o generated_files/obj/STDLib_wrap.o -o generated_files/STDLib.so -L/opt/perl_5.18.2/linux50_64/lib/CORE -lperlifx

#=========================================== generic phony
all: generated_files/STDLib.so

clean:
	rm -f generated_files/obj/vect.o generated_files/obj/str.o 
	rm -f generated_files/STDLib.so generated_files/STDLib_wrap.cpp generated_files/STDLib.pm generated_files/obj/STDLib_wrap.o

#========================================================
# file:///C:/src/swigwin-4.1.1/Examples/perl5/callback/index.html
# 
# 
#==========================================================