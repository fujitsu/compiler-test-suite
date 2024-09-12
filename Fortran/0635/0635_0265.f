      subroutine sub(a,b,c)
      integer a(10,10),b(10,10),c(10)
      do i=1,10
         do j=1,10
            a(i,j)=i
         enddo
      enddo
      do i=1,10
         do j=1,10
            b(i,j)=i
         enddo
      enddo
      do j=1,10
         c(j)=j
      enddo
      end

      program main
      integer a(10,10),b(10,10),c(10)
      call sub(a,b,c)
      print *,a
      print *,b
      print *,c
      end
