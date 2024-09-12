      module global
      parameter ( imax = 1024, jmax = 1024, kmax = 256 )
      real(8),dimension(imax,jmax) :: q
      end module global

      subroutine sub(a)
      use global
      real(8) a
      real(8),dimension(imax,jmax) :: p
      pointer(ip,p)

      do i = 1, imax
         do j = 1, jmax
            p( i, j ) = q( i, j ) + 1.0
 2       enddo
 1    enddo

      a=p(1,1)

      end

      print*,'COMPILE OK'
      print*,'CONFIRM COMMENTS IN THE TEST PROGRAM FOR THE DETAIL'
      end
