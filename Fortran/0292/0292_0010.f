      subroutine s(l)
      k=0
      do i=1,l
         j=34/(l*3)
         k=k+i/j
      enddo
      if ( 55.eq.k ) print *,'OK'
      end

      call s(10)
      end
