#Configure is necessary to create tif-config. Also disable cups and sse2
./configure --disable-cups --disable-sse2
#Copy precompiled files for machine cpu
mkdir -p obj/aux
cp ../echogs obj/aux
cp ../genarch obj/aux
cp ../genconf obj/aux
cp ../iOS/MakefileSimulator ./Makefile
cp ../iOS/arch.h ./obj/
make
#make will fail here so restart after copying file
cp ../mkromfs obj/aux
cp ../mkromfs_0 obj/aux
make
#remove duplicate symbol object files
rm obj/inobtokn.o
rm obj/gsiodevs.o
ar -crs libgs_x86_release.a obj/*.o
rm -r obj
mkdir -p obj/aux
cp ../echogs obj/aux
cp ../genarch obj/aux
cp ../genconf obj/aux
cp ../iOS/arch.h ./obj/
cp ../iOS/MakefileiOS ./Makefile
make
cp ../mkromfs obj/aux
cp ../mkromfs_0 obj/aux
make
ar -crs libgs_arm7_release.a obj/*.o
lipo -output libgsuniversal_release.a -create libgs_arm7_release.a  libgs_x86_release.a