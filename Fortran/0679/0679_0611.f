       program main
       real * 4 a(30),b(30)
       integer * 4 n , m , nn , mm
       data a/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,11.,12.,13.,14.,15.
     +      , 16.,17.,18.,19.,20.,21.,22.,23.,24.,25.,26.,27.,28.
     +      , 29.,30./
       data b/10*1.,10*2.,10*3./
       data n/1/,m/10/
       nn = 1
       mm = -1
       do 10 i=1,10,nn
         do 11 j=10,1,mm
           do 12 k=1,10
             a(k) = a(k+nn)
 12        continue
           do 13 k1=n,m
             b(k1) = b(k1-mm)
 13        continue
           nn = nn + 1
           mm = mm -1
 11      continue
 10    continue
       write(6,*) 'a=',a,'b=',b
       stop
       end
