      subroutine s(l)
      k=0
      do i=1,l
         j=24/l
         k=k+i/j
      enddo
      if ( 25.eq.k ) print *,'OK'
      end

      call s(10)
      end
