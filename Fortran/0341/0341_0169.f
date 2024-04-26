      integer a(10)
c
      a=10
      call sub
      do 10 i=1,10
         a(i)=1
 10   continue
      call sub
      call sub
      if(a(5).eq.1) then
         write(6,*) "OK"
      else
         write(6,*) "NG"
      endif
      end
c
      subroutine sub
      integer a(10)
      do 20 i=1,10
         a(i)=10
 20   continue
      end
