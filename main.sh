parallel --no-notice rm -r ::: s1/* s2/* s3/* s4/* s5/* s6/* s7/* s8/* s9/* s10/* s11/* s12/* s13/*
parallel --no-notice rm -r ::: s14/* s15/* s16/* s17/* s18/* s19/* s20/* s21/* s22/* s23/* s24/* s25/*
cd s
for f in *\ *; do mv "$f" "${f// /_}"; done
cd ..
cd s
parallel convert {} -resize 3000x3000 {.}.png ::: *.* 
rm *.jpg
rm *.JPG
parallel convert {} ../s25/{} ::: *.*
cd ..
cd s
parallel convert {} -modulate 100,150,100  ../s1/{} ::: *.* 
cd ..
cd s1
for i in *.* 
do 
convert $i ../s/$i -alpha set -channel A -evaluate set 100% -compose softlight -composite ../s3/$i 
done 
cd .. 
cd s3
parallel gmic {} -fx_poster_edges 20,30,5,0,10,0,0,0 -o ../s4/{} ::: *.* 
cd ..
cd s4
for i in *.*; do
   convert $i  -set filename:new ../s25/"%tsket" "%[filename:new].png"
done
cd ..
cd s
for i in *.*; do
convert $i  -set filename:new ../s20/"%t" "%[filename:new].png"
done
cd .. 
cd s4
for i in *.*; do
   convert $i  -set filename:new ../s21/"%t" "%[filename:new].png"
done
cd ..
cd s20
for i in *.* 
do 
convert $i ../s21/$i -alpha set  -compose softlight -composite ../s22/$i 
done 
cd .. 
cd s22
for i in *.* 
do 
convert $i ../s21/$i -alpha set  -compose screen -composite ../s10/$i 
done 
cd ..
cd s
parallel gmic {} -fx_sketchbw 3,45,180,30,1.75,0.02,0.5,0.75,0.1,0.7,3,6,0,1,4,0,50,50 -o ../s1/{} ::: *.* 
cd ..
cd s1
parallel convert {} -modulate 100,150,100  ../s2/{} ::: *.* 
cd .. 
cd s2
for i in *.*; do
   convert $i  -set filename:new ../s7/"%t" "%[filename:new].png"
done
cd ..
cd s7
for i in *.* 
do 
convert $i ../s22/$i -alpha set  -compose softlight -composite ../s8/$i 
done 
cd .. 
cd s8
for i in *.* 
do 
convert $i ../s10/$i -alpha set  -compose pinlight -composite ../s13/$i 
done 
cd ..
cd s13
parallel gmic {} -fx_corvo_painting_5 35,10,10,0.18,15,0.3,5,2,5,1 -o ../s14/{} ::: *.* 
cd .. 
cd s14
for i in *.*; do
   convert $i  -set filename:new ../s25/"%tsketwater" "%[filename:new].png"
done
cd ..
cd s14
for i in *.* 
do
gmic -input $i -gtutor_fpaint 0.5,0.5,0,0,45,0.5,0.5,0.5,0 -o ../s1/$i 
done
cd ..
cd s1
for i in *.* 
do 
convert $i ../s14/$i -alpha set  -compose softlight -composite ../s2/$i 
done 
cd ..
cd s2
parallel convert {}  -set filename:new  ../s25/"%tyfinger" "%[filename:new].png" ::: *.*
cd ..
cd s2
parallel gmic {} -fx_AbstractFlood 1,10,7,2,0,10,5,3,255,255,255,255,0,300,10,90,0.7,0,0,0 -o ../s5/{} ::: *.*
cd ..
cd s5
parallel gmic {} -fx_unsharp 1,1.25,10,2,0,1,1,1,0,0,0,50,50 -o ../s17/{} ::: *.*
cd ..
cd s17
parallel convert {}  -set filename:new  ../s25/"%tyfinger_fl" "%[filename:new].png" ::: *.*
cd ..
cd s14
for i in *.*
do
gmic $i -fx_custom_deformation "(w+h)/20*cos(y*20/h)","(w+h)/20*sin(x*20/w)",1,1,3 -o ../s15/$i
done
cd ..
cd s15
parallel convert {}  -set filename:new  ../s25/"%td_cartesian_transform" "%[filename:new].png" ::: *.*
cd ..
cd s15
for i in *.* 
do
gmic -input $i -gtutor_fpaint 0.5,0.5,0,0,45,0.5,0.5,0.5,0 -o ../s1/$i 
done
cd ..
cd s1
for i in *.* 
do 
convert $i ../s15/$i -alpha set  -compose softlight -composite ../s2/$i 
done 
cd ..
cd s2
parallel convert {}  -set filename:new  ../s25/"%tm3_finger" "%[filename:new].png" ::: *.*
cd ..
cd s2
for i in *.* 
do 
convert $i ../s17/$i -alpha set  -compose darken -composite ../s5/$i 
done 
cd ..
cd s5
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3d" "%[filename:new].png" ::: *.*
cd ..
cd s5
parallel gmic {} -fx_AbstractFlood 1,10,7,2,0,10,5,3,255,255,255,255,0,300,10,90,0.7,0,0,0 -o ../s15/{} ::: *.*
cd ..
cd s15
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3d_flood" "%[filename:new].png" ::: *.*
cd ..
cd s5
parallel convert {} -flop  ../s6/{} ::: *.* 
cd ..
cd s6
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3a" "%[filename:new].png" ::: *.*
cd ..
cd s6
parallel gmic {} -fx_AbstractFlood 1,10,7,2,0,10,5,3,255,255,255,255,0,300,10,90,0.7,0,0,0 -o ../s15/{} ::: *.*
cd ..
cd s15
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3a_flood" "%[filename:new].png" ::: *.*
cd ..
cd s15
parallel gmic {} -fx_layer_cake 4,360,0,75,50,50,3,1,0,30,0,3,0,0,50,50 -o ../s16/{} ::: *.*
cd ..
cd s16
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3a_flood_cake" "%[filename:new].png" ::: *.*
cd ..
cd s16
parallel gmic {} -fx_array_fade 1,1,0,0,80,90,0,0 -o ../s18/{} ::: *.*
cd ..
cd s18
parallel gmic {} -fx_array_fade 1,1,0,0,80,90,0,0 -o ../s3/{} ::: *.*
cd ..
cd s3
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3a_flood_cake_fade2" "%[filename:new].png" ::: *.*
cd ..
cd s3
parallel gmic {} -fx_array_color 5,5,0.5 -o ../s19/{} ::: *.*
cd ..
cd s19
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3a_flood_cake_fade2_ranc" "%[filename:new].png" ::: *.*
cd ..
cd s5
for i in *.* 
do 
convert $i ../s6/$i -alpha set  -compose pinlight -composite ../s7/$i 
done 
cd ..
cd s7
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3c" "%[filename:new].png" ::: *.*
cd ..
cd s7
parallel gmic {} -fx_AbstractFlood 1,10,7,2,0,10,5,3,255,255,255,255,0,300,10,90,0.7,0,0,0 -o ../s15/{} ::: *.*
cd ..
cd s15
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3c_flood" "%[filename:new].png" ::: *.*
cd ..
cd s15
parallel gmic {} -fx_layer_cake 4,360,0,75,50,50,3,1,0,30,0,3,0,0,50,50 -o ../s16/{} ::: *.*
cd ..
cd s16
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3c_flood_cake" "%[filename:new].png" ::: *.*
cd ..
cd s16
parallel gmic {} -fx_array_fade 1,1,0,0,80,90,0,0 -o ../s18/{} ::: *.*
cd ..
cd s18
parallel gmic {} -fx_array_fade 1,1,0,0,80,90,0,0 -o ../s3/{} ::: *.*
cd ..
cd s3
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3c_flood_cake_fade2" "%[filename:new].png" ::: *.*
cd ..
cd s3
parallel gmic {} -fx_array_color 5,5,0.5 -o ../s19/{} ::: *.*
cd ..
cd s19
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3c_flood_cake_fade2_ranc" "%[filename:new].png" ::: *.*
cd ..
cd s6
for i in *.* 
do 
convert $i ../s5/$i -alpha set  -compose pinlight -composite ../s8/$i 
done 
cd ..
cd s8
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3b" "%[filename:new].png" ::: *.*
cd ..
cd s8
parallel gmic {} -fx_AbstractFlood 1,10,7,2,0,10,5,3,255,255,255,255,0,300,10,90,0.7,0,0,0 -o ../s15/{} ::: *.*
cd ..
cd s15
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3b_flood" "%[filename:new].png" ::: *.*
cd ..
cd s15
parallel gmic {} -fx_layer_cake 4,360,0,75,50,50,3,1,0,30,0,3,0,0,50,50 -o ../s16/{} ::: *.*
cd ..
cd s16
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3b_flood_cake" "%[filename:new].png" ::: *.*
cd ..
cd s16
parallel gmic {} -fx_array_fade 1,1,0,0,80,90,0,0 -o ../s18/{} ::: *.*
cd ..
cd s18
parallel gmic {} -fx_array_fade 1,1,0,0,80,90,0,0 -o ../s3/{} ::: *.*
cd ..
cd s3
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3b_flood_cake_fade2" "%[filename:new].png" ::: *.*
cd ..
cd s3
parallel gmic {} -fx_array_color 5,5,0.5 -o ../s19/{} ::: *.*
cd ..
cd s19
parallel convert {}  -set filename:new  ../s25/"%tm3_finger3b_flood_cake_fade2_ranc" "%[filename:new].png" ::: *.*

