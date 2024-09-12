      program main
      real a(100,100,10),b(100,100,10)
      do k=1,10
         do j=1,100
            do i=1,100
               b(i,j,k)=i
            enddo
         enddo
      enddo
      call sub(a,b,n)
      print *,a(100,100,1)
      end

      subroutine sub(a,b,n)
      real a(100,100,10),b(100,100,10)
      do k=1,1
         do j=1,100
            do i=1,100
               a(i,j,k)=b(i,j,k)
            enddo
         enddo
      enddo
      end
