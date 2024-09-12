       program main
       real * 4 a(30),b(30)
       integer * 4 n , m , nn , mm ,l,ll
       data a/5*1.,5*2.,5*3.,5*4.,5*5.,5*6./
       data b/5*1.,5*2.,5*3.,5*4.,5*5.,5*6./
       data n/1/,m/10/,nn/-1/mm/-10/,l/1/,ll/5/
       do 10 i=n,m
         do 11 j=-mm,-nn
           do 12 j1=l*2,ll*2
             do 13 k=1,10
               a(k+n) = a(k+m)
 13          continue
             do 14 k1=11,20
               a(k1-mm) = a(k1-nn)
 14          continue
             do 15 k2 =21,30
               a(k2+l) = a(k2+ll)
 15          continue
 12        continue
 11      continue
 10    continue
       write(6,*) ' a=',a,'b=',b
       stop
       end
