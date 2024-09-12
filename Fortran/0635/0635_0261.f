      subroutine sub(a,b,c)
      integer a(10),b(10),c(10,10)
      do j=1,10
         a(j)=j
      enddo
      do j=1,10
         b(j)=j
      enddo
      do j=1,10
         do i=1,10
            c(i,j)=i
         enddo
      enddo
      end

      program main
      integer a(10),b(10),c(10,10)
      call sub(a,b,c)
      print *,a
      print *,b
      print *,c
      end
