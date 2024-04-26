      parameter(n1=10,n2=10,n3=10)
      real(8),dimension(n1,n2,n3) :: a,b

      do k=1,n3
      do j=1,n2
      do i=1,n1
         a(i,j,k) = i
         b(i,j,k) = i
      enddo
      enddo
      enddo
      call  kernel2(a,b,n1,n2,n3,1)
      write(6,*) ' 2387-end '
      stop
      end
      subroutine kernel2(a,b,n1,n2,n3,k)
      real(8),dimension(n1,n2,n3) :: a,b
      integer :: i,j,k,n1,n2,n3
      real(8),Parameter :: c0 = 1.999_8
      do j=1,n2
      do i=1,n1
         a(i,j,k) = a(i,j,k) + c0 * b(i,j,k)
      enddo
      enddo
      end
