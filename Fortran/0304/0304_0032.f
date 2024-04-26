      subroutine kernel(a,b,c,n1,n2,iter)
      real(8),dimension(n1,n2) :: a,b,c
      real(8),dimension(n1) :: p
      integer :: i,j,n1,n2
      real(8),Parameter :: c0 = 1.999_8

!$omp parallel private(p)
      do k=1,iter
!$omp do
         do j=1,n2
           do i=2,n1
             p(i-1) = a(i,j) + c0 * b(i,j)
           enddo
         enddo
!$omp end do

      enddo

!$omp end parallel

      end

      write(6,*) "ok"
      end
