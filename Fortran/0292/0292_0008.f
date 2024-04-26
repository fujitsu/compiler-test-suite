      subroutine s(l,m)
      real*4 l,m
      k=1
      do i=1,10
         k=k+(l*m*3.0)/3.0
      enddo
      if ( 201.eq.k ) print *,'OK'
      end

      l=11
      m=20
      call s(10.0,2.0)
      end
