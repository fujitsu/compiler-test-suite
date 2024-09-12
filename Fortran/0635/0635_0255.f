      subroutine sub(a,b,c,d)
      integer a(10),b(10),c(10),d(10)
      do i=1,10
         a(i)=i
      enddo
      do i=1,10
         b(i)=i
      enddo
      do i=1,10
         c(i)=i
      enddo
      do i=1,10
         d(i)=i
      enddo
      end

      program main
      integer a(10),b(10),c(10),d(10)
      call sub(a,b,c,d)
      print *,a
      print *,b
      print *,c
      print *,d
      end
