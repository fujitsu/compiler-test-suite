      subroutine sub(a,b)
      integer a(10,10),b(20,10)
      do j=1,10
         do i=1,10
            a(i,j)=i
         enddo
      enddo
      do j=1,10
         do i=1,20
            b(i,j)=i
         enddo
      enddo
      end

      program main
      integer a(10,10),b(20,10)
      call sub(a,b)
      print *,a
      print *,b
      end