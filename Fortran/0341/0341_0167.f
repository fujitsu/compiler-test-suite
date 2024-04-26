      parameter (jj=1)
      integer a(2,2),b(2,2)
      a(1,1)=10
      a(1,2)=10
      a(2,1)=10
      a(2,2)=10
      b(1,1)=10
      b(1,2)=10
      b(2,1)=10
      b(2,2)=10
      j=jj
      do 10 i=1,2
         a(j,i) = 1
 10   continue
      j=jj+1
      do 11 i=1,2
         b(j,i) = 1
 11   continue
      if(a(1,1).eq.1) then
         if(b(1,1).eq.10) then
            write(6,*) "OK"
         else
            write(6,*) "NG"
         endif
      else
         write(6,*) "NG"
      endif
      end
