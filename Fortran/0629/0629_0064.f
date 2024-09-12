      real(kind=8),dimension(4,4) :: a
      data a/16*0./
      do i=1,4
        do j=1,4
          a(i,j) = 1.
        enddo
      enddo
      print *,a
      end
