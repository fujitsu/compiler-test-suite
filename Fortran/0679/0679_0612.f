       program main
       real * 4 a(30),b(30)
       integer * 4 n , m,n1,n2,n3,n4
       data a/5*1.,5*2.,5*3.,5*4.,5*5.,5*6./
       data b/5*1.,5*2.,5*3.,5*4.,5*5.,5*6./
       data n/1/,m/1/ ,n1/5/,n2/5/,n3/10/,n4/5/
       do 10 i=1,n+1
         do 11 j=3,n1+3
           do 12 j1=-1,n2-1
             do 13 j2=-3,n3-3
               do 14 j3=m+1,m+n4+1
                 do 20 k=1,5
                   a(k) = a(k+n)
 20              continue
                 do 21 k1=6,10
                   a(k1) =a(k1+n2)
 21              continue
                 do 22 k2=11,15
                   a(k2) = a(k2+n3)
 22              continue
                 do 23 k3=16,20
                   a(k3) = a(k3+n4)
 23              continue
 14            continue
 13          continue
 12        continue
 11      continue
 10    continue
       do 31 i=1,n+1,-1
         do 32 j=3,n1+3,-1
           do 33 j1=-1,n2-1,-1
             do 34 j2=-3,n3-3,-1
               do 35 j3=m+1,m+n4+1,-1
                 do 36 k=1,5
                   a(k) = a(k-n)
 36              continue
                 do 37 k1=6,10
                   a(k1) =a(k1-n2)
 37              continue
                 do 38 k2=11,15
                   a(k2) = a(k2-n3)
 38              continue
                 do 39 k3=16,20
                   a(k3) = a(k3-n4)
 39              continue
 35            continue
 34          continue
 33        continue
 32      continue
 31    continue
       write(6,*) 'a=',a,'b=',b
       stop
       end
