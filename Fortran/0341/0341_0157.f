      integer a(10,10),b(10,10)
      N=10
      M=10
      do 10 i=1,N
         do 20 j=1,M
            a(i,j) = 1
            b(i,j) = 1
 20      continue
 10   continue
      do 11 i=1,N
         do 21 j=1,M
            a(i,j) = 1
            b(i,j) = 1
 21      continue
 11   continue
      if(a(5,5).eq.1) then
         if(b(5,5).eq.1) then
            write(6,*) "OK"
         else
            write(6,*) "NG"
         endif
      else
         write(6,*) "NG"
      endif
      end
