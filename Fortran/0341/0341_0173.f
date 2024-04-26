      integer a(100,100),b(100,100)
      N=100
      M=100
      do 10 i=1,N
         do 20 j=1,M
            a(i,1) = 1
 20      continue
 10   continue
      do 11 i=1,M
         do 21 j=1,N
            b(j,1) = 1
 21      continue
 11   continue
      if(a(1,1).eq.1) then
         if(b(1,1).eq.1) then
            write(6,*) "OK"
         else
            write(6,*) "NG"
         endif
      else
         write(6,*) "NG"
      endif
      end
