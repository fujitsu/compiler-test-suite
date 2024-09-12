      real(kind=8),dimension(1:100,1:100) :: a
      a=2.
      call sub(a)
      print *,a(1,10),a(2,10)
      end

      subroutine sub(a)
      real(kind=8),dimension(1:100,1:100) :: a
      do i=1,100
        do j=1,100
           a(i,j) = 1.
        enddo
      enddo
      end subroutine
