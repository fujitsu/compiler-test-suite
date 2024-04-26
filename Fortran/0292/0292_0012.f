      subroutine s(l,m)
      k=1
      j=0
      do i=1,10
         k=k+(l*2*m)
      enddo
      do i=1,10
         j=j+(l*2*m)
      enddo
      if ( 41.eq.k ) print *,'OK'
      if ( 40.eq.j ) print *,'OK'
      end

      l=11
      m=20
      call s(1,2)
      end
