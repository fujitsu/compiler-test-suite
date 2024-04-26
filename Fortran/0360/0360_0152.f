      subroutine s(l,m)
      integer*4 k(10,10),n(10,10)
      do i=1,9
         do j=1,9
            k(i,j)=l*2*m
            n(i,j)=l*2*m
         enddo
      enddo
      if ( 41.eq.k(2,2) ) print *,'OK'
      if ( 40.eq.n(2,2) ) print *,'OK'
      print *,k(2,2),n(2,2)
      end
c
      l=11
      m=20
      call s(1,2)
      end
