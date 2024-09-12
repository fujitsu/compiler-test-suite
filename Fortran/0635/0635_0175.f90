      subroutine sub1(a,n)
      real*8 a(n,n,n)
      do k=2,n
         do j=2,n
            do i=2,n
               a(i,j,k)=a(i-1,j,k)+a(i,j-1,k)+a(i,j,k-1)
            enddo
         enddo
      enddo
      end

      subroutine init(a,n)
      real*8 a(n,n,n)
      m=1
      do k=1,n
         do j=1,n
            do i=1,n
               a(i,j,k)=m
               m=m+1
            enddo
         enddo
      enddo
      end

      program main
      parameter(n=30) 
      real*8 a(n,n,n)
      call init(a,n)
      call sub1(a,n)
      print *,a(n,n,n)
      end
