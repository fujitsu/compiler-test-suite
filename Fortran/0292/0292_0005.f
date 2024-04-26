      subroutine s(l)
      k=0
      do i=1,l
         if ( l.eq.10 ) then
            j=24/l
            print *,'hello'
         endif
         k=k+i/j
      enddo
      if ( 25.eq.k ) print *,'OK'
      end

      call s(10)
      end
