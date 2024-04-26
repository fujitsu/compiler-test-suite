      program main
      parameter(n=10)
      real a(n,n),b(n,n)
      integer index(n)
      do j=1,n
         do i=1,n
            a(i,j)=i
            b(i,j)=i
         enddo
         index(j)=j
      enddo
      call sub1(a,b,n,index)
      print *,a
      print *,b
      call sub2(a,b,n,index)
      print *,a
      print *,b
      end

      subroutine sub1(a,b,n,index)
      real a(n,n),b(n,n)
      integer index(n)
!$omp parallel do
      do j=1,n
         do i=1,n
            a(i,j)=i
         enddo
         do i=1,n
            b(i,j)=b(index(i),j)
         enddo
      enddo
      end

      subroutine sub2(a,b,n,index)
      real a(n,n),b(n,n)
      integer index(n)
!$omp parallel do
      do j=1,n
         do i=1,n
            b(i,j)=b(index(i),j)
         enddo
         do i=1,n
            a(i,j)=i
         enddo
      enddo
      end
