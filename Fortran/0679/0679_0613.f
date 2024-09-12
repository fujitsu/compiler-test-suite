       program main
       real * 4 a(30),b(30)
       integer * 4 n , m
       data a/5*1.,5*2.,5*3.,5*4.,5*5.,5*6./
       data b/5*1.,5*2.,5*3.,5*4.,5*5.,5*6./
       data n/1/,m/1/,n1/4/,n2/5/,n3/5/,n4/5/
       do 10 i=n+1,1
         do 11 j=n1+3,3
           do 12 j1=n2-1,-1
             do 13 j2=n3-3,-3
               do 14 j3=m+n4+1,m+1
                 do 20 k=1,5
                   a(k) = a(k-n)
 20              continue
                 do 21 k1=6,10
                   a(k1) = a(k1-n1)
 21              continue
                 do 22 k2=11,15
                   a(k2) = a(k2-n2)
 22              continue
                 do 23 k3=15,20
                   a(k3) =a(k3-n3)
 23              continue
                 do 24 k4=21,25
                   a(k4) = a(k4-n4)
 24              continue
 14            continue
 13          continue
 12        continue
 11      continue
 10    continue
       do 30 i=n+1,1,-1
         do 31 j=n1+3,3,-1
           do 32 j1=n2-1,-1,-1
             do 33 j2=n3-3,-3,-1
               do 34 j3=m+n4+1,m+1,-1
                 do 40 k=1,5
                   b(k) = b(k+n)
 40              continue
                 do 41 k1=6,10
                   b(k1) = b(k1+n1)
 41              continue
                 do 42 k2=11,15
                   b(k2) = b(k2+n2)
 42              continue
                 do 43 k3=15,20
                   b(k3) =b(k3+n3)
 43              continue
                 do 44 k4=21,25
                   b(k4) = b(k4+n4)
 44              continue
 34            continue
 33          continue
 32        continue
 31      continue
 30    continue
       write(6,*) 'a=',a,'b=',b
       stop
       end
