       program main
       real * 4 a(30),b(30)
       integer * 4 n , m , nn , mm
       data a/5*1.,5*2.,5*3.,5*4.,5*5.,5*6./
       data b/5*1.,5*2.,5*3.,5*4.,5*5.,5*6./
       data n/1/,m/-1/,nn/-10/,mm/10/
       do 10 i=1,n+1
         do 11 j=2,-nn+2
           do 12 k=1,10
             a(k) = a(k+n)
 12        continue
           do 13 k1=11,20
             a(k1) = a(k1-nn)
 13        continue
 11      continue
 10    continue
       do 20 i=1,m+1,-1
         do 21 j=2,-mm+2 ,-1
           do 22 k=1,10
             b(k) = b(k-m)
 22        continue
           do 23 k1=11,20
             b(k1) = b(k1+mm)
 23        continue
 21      continue
 20    continue
       write(6,*) 'a=',a,'b=',b
       stop
       end
