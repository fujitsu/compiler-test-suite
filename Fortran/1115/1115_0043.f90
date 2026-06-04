      subroutine sub(a,b,c)
      real a(10),b(10),c(10)

      do m=1,10
         do i=2,10
            a(i)=a(i-1)
         enddo
!----- multi thread region ..begin----
         do j=1,10
            b(j)=j
         enddo
         do k=1,10
            c(k)=k
         enddo
!----- multi thread region ..end----
      enddo

      end

      program main
      real :: a(10) = (/(i,i=1,10)/)
      real b(10),c(10)
      call sub(a,b,c)
      print *,a
      print *,b
      print *,c
      end
