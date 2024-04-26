      subroutine s(l,m)
      k=1
      do i=1,10
         k=k+(l*2*m*l*2*m)
      enddo
      if ( 161.eq.k ) print *,'OK'
      end

      l=11
      m=20
      call s(1,2)
      end
