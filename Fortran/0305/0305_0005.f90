      program main
      parameter(n=5)
      integer :: a(n,n),b(n,n)
      call init(a,b,n)
      
      a(:,:)=b(:,:)
      do kk=1,2
         a(:,:)=b(:,:)
      enddo
      a(:,:)=b(:,:)

      print *,a
      end

      subroutine init(a,b,n)
      integer :: a(n,n),b(n,n)
      do j=1,n
         do i=1,n
            a(i,j)=0
            b(i,j)=(j-1)*n+i
         enddo
      enddo
      end
