      subroutine sub(a,b,c,d)
      integer a(10,10),b(10,10),c(10,10),d(10,10)
      do j=1,10
         do i=1,10
            a(i,j)=b(i,j)
         enddo
      enddo
      do j=1,10
         do i=1,10
            c(i,j)=d(i,j)
         enddo
      enddo
      end

      program main
      integer a(10,10),b(10,10),c(10,10),d(10,10)
      do j=1,10
         do i=1,10
            b(i,j)=i+j
            d(i,j)=i+j+1
         enddo
      enddo
      call sub(a,b,c,d)
      print *,a
      print *,c
      end
