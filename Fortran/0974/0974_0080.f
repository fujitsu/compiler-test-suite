      subroutine sub(a,b)
      real a(10),b(10)

      do k=1,10
         do i=1,10
            a(i)=i+k
         enddo
         do j=1,10
            b(j)=j+k
         enddo
      enddo

      end

      program main
      real a(10),b(10)
      call sub(a,b)
      print *,a
      print *,b
      end
