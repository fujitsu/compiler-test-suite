      program main
      parameter(n=10)
      real a(n,n),b(n,n)
      do j=1,n
         do i=1,n
            a(i,j)=i
            b(i,j)=i
         enddo
      enddo
      call sub1(a,b,n)
      print *,a
      print *,b
      end

      subroutine sub1(a,b,n)
      real a(n,n),b(n,n)
!$omp parallel do
      do j=1,n
         do i=1,n
            a(i,j)=i
         enddo
         do i=1,n
            b(i,j)=i
         enddo
      enddo
      end













