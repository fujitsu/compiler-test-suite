      integer a(10,10),b(10,10)
      parameter (N=1)
      a=10
      b=10
      j=N
      do 10 i=1,10
         a(5,i) = 1
 10   continue
      j=N+1
      do 11 i=1,10
         b(j,i) = 1
 11   continue
      if(a(5,5).eq.1) then
         if(b(5,5).eq.10) then
            write(6,*) "OK"
         else
            write(6,*) "NG"
         endif
      else
         write(6,*) "NG"
      endif
      end
