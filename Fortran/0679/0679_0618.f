       program main
       real * 4 a(30),b(30),c(30),d(30),e(30),f(30)
       integer * 4 n,n1,n2,n3,n4,n5
       data a/5*1.,5*2.,5*3.,5*4.,5*5.,5*6./
       data b/5*1.,5*2.,5*3.,5*4.,5*5.,5*6./
       data c/5*1.,5*2.,5*3.,5*4.,5*5.,5*6./
       data d/5*1.,5*2.,5*3.,5*4.,5*5.,5*6./
       data e/5*1.,5*2.,5*3.,5*4.,5*5.,5*6./
       data f/5*1.,5*2.,5*3.,5*4.,5*5.,5*6./
       data n/1/
       data n1/4/,n2/5/,n3/5/,n4/5/,n5/5/

       do 10 i=1,n,1
         do 11 i1=2,n1,1
           do 12 i2=3,n2+1,1
             do 13 i3=1,n3-1,1
               do 14 i4=5,n4+2,1
                 do 15 i5=1,-n5,1
                   do 20 k=1,10
                     a(k) = a(k+n)
                     b(k) = b(k+n1)
                     c(k) = c(k+n2)
 20                continue
                   do 21 k1=1,10
                     d(k1) = d(k1+n3)
                     e(k1) = d(k1+n4)
                     f(k1) = d(k1+n5)
 21                continue
 15              continue
 14            continue
 13          continue
 12        continue
 11      continue
 10    continue
       write(6,*) 'a=',a,'b=',b,'c=',c,'d=',d,'e=',e,'f=',f
       do 30 i=10,n,-1
         do 31 i1=10,n1,-1
           do 32 i2=10,n2+2,-1
             do 33 i3=10,n3-1,-1
               do 34 i4=10,n4+2,-1
                 do 35 i5=-1,-n5,-1
                   do 40 k=1,10
                     a(k+n) = a(k+11)
                     b(k+n1) = b(k+11)
                     c(k+n2) = c(k+11)
 40                continue
                   do 41 k1=1,10
                     d(k1+n3) = d(k1+11)
                     e(k1+n4) = e(k1+11)
                     f(k1+n5) = f(k1+11)
 41                continue
 35              continue
 34            continue
 33          continue
 32        continue
 31      continue
 30    continue
       write(6,*) 'a=',a,'b=',b,'c=',c,'d=',d,'e=',e,'f=',f
       stop
       end
