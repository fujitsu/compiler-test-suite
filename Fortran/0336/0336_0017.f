      real c(10,10)
      c=2
      call sub(c,i,j)
      end
      subroutine sub(c,i,j)
      integer c(5,5)
      do i=1,5
        do j=1,5
          c(j,i) = 0
          do k=1,5
            c(j,i) = 1
          end do
        end do
      end do
      print *,"c=",c
      end subroutine
