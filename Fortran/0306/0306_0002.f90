      program main
      parameter(n1=10,n2=10,n3=10)
      real*4 a(n1,n2,n3)
      a = 0
      call sub(a,n1,n2,n3)
      print *,sum(a)
      end

      subroutine sub(a,n1,n2,n3)
      integer n1,n2,n3
      real*4 a(n1,n2,n3)
 
      do j = 1, n1
         a(1,j,1 ) = j
      end do
  
      do k = 1, n2
         do i = 1, n2
            a(i,1,k) = i
         end do
      end do

      do k = 1, n2
         do j = 1, n3
            a(1,j,k) = j
         end do
      end do
      end
