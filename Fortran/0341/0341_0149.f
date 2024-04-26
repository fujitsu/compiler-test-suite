      integer a(10),b
c
      b=10
      a=1
      call sub(a,b)
c
      if(a(5).eq.19) then
         write(6,*) "OK"
      else
         write(6,*) "NG"
      endif
      end
c
      subroutine sub(a,b)
      integer a(10),b
      do 10 j=1,10
         do 20 i=1,10
            a(i) = 9 + b
 20      continue
 10   continue
      end
