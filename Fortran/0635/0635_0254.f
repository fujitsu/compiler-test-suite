      subroutine sub(a,b)
      integer a(10),b(10)
      do i=1,10
         a(i)=i
      enddo
      do i=1,10
         b(i)=i
      enddo
      end

      program main
      integer a(10),b(10)
      call sub(a,b)
      print *,a
      print *,b
      end
