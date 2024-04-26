      subroutine s(l,m)
      k=1
      j=0
      n=0
      do i=1,1000
         n=n+(l*2*m)
         k=l+(l*2*m)
         j=m+(l*2*m)
      enddo
      if ( 41.eq.k ) print *,'OK'
      if ( 40.eq.j ) print *,'OK'
      end

      l=11
      m=20
      call s(1,2)
      end
