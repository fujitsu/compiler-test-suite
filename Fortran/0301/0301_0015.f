      call sub(10)
      end

      subroutine sub(nn)
      real a(nn)
      do 102 j=1,10
      do 102 i=1,10
      a(j)=2.d0
 102  continue
      write(6,*) a
      return
      end
