      subroutine sub(a,b,c,d,x,y)
      integer a(10,10,10), b(10,10,10), c(10,10,10), d(10,10,10),
     *        x(10,10), y(10,10)
      do k=1,10
         do i=1,10
            x(i,k)=y(i,k)
            do j=1,10
               a(i,j,k)=b(i,j,k)
            enddo
         enddo
      enddo
      do k=1,10
         do i=1,10
            do j=1,10
               c(i,j,k)=d(i,j,k)
            enddo
         enddo
      enddo
      end

      program main
      integer a(10,10,10), b(10,10,10), c(10,10,10), d(10,10,10),
     *        x(10,10), y(10,10)
      do k=1,10
         do i=1,10
            y(i,k) = i+k
            do j=1,10
               b(i,j,k) = i+j+k
               d(i,j,k) = i+j+k+1
            enddo
         enddo
      enddo
      call sub(a,b,c,d,x,y)
      print *,"pass"
      end
