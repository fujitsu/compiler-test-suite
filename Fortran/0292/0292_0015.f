      subroutine s(l)
      k=1
      do i=1,l
         if ( l.eq.10 ) then
            j=24/l
         endif
         k=k+i/j
      enddo
      if ( k == 26 ) print *,'OK'
      end

      call s(10)
      end
