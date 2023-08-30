#online links : https://makefiletutorial.com/
hello:
	echo "its v1"
	perl perl/client.pl

test: perl/client.pl all
	perl perl/client.pl


#=========================================== test code compilation

generated_files/obj/SimpleDS.o: cpp/SimpleDS.cpp cpp/SimpleDS.h
	g++ -c -D_REENTRANT -D_GNU_SOURCE -DPERL_USE_SAFE_PUTENV -fno-strict-aliasing -pipe -fstack-protector -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -O2 -fPIC -m64  cpp/SimpleDS.cpp -o generated_files/obj/SimpleDS.o

#=========================================== SWIG file compilation
generated_files/SimpleDS_wrap.cpp: swig/SimpleDS.i
	swig -c++ -perl -outdir generated_files -o generated_files/SimpleDS_wrap.cpp swig/SimpleDS.i

generated_files/obj/SimpleDS_wrap.o: generated_files/SimpleDS_wrap.cpp
	g++ -c -Wno-literal-suffix -D_REENTRANT -D_GNU_SOURCE -DPERL_USE_SAFE_PUTENV -fno-strict-aliasing -pipe -fstack-protector -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -O2 -fPIC -m64 -I /opt/perl_5.18.2/linux50_64/lib/CORE/ generated_files/SimpleDS_wrap.cpp -I cpp/ -o generated_files/obj/SimpleDS_wrap.o

generated_files/SimpleDS.so: generated_files/obj/SimpleDS.o  generated_files/obj/SimpleDS_wrap.o
	g++ -shared generated_files/obj/SimpleDS.o generated_files/obj/SimpleDS_wrap.o -o generated_files/SimpleDS.so -L/opt/perl_5.18.2/linux50_64/lib/CORE -lperlifx

#=========================================== generic phony
all: generated_files/SimpleDS.so

clean:
	rm -f generated_files/obj/SimpleDS.o 
	rm -f generated_files/SimpleDS.so generated_files/SimpleDS_wrap.cpp generated_files/SimpleDS.pm generated_files/obj/SimpleDS_wrap.o

#========================================================
# file:///C:/src/swigwin-4.1.1/Examples/perl5/callback/index.html
# 
# 
#==========================================================