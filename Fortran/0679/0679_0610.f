       program main
       real * 4 a(30),b(30)
       integer * 4 n , m , nn , mm
       data a/5*1.,5*2.,5*3.,5*4.,5*5.,5*6./
       data b/5*1.,5*2.,5*3.,5*4.,5*5.,5*6./
       data n/1/,m/10/
       nn = 1
       mm = -1
       do 10 i=10,1,-nn
         do 11 j=10,1,mm
           do 12 k=n,m
             a(k) = a(k+nn)
 12        continue
           do 13 k1=11,20
             b(k1) = b(k1-mm)
 13        continue
 11      continue
 10    continue
       write(6,*) 'a=',a,'b=',b
       stop
       end