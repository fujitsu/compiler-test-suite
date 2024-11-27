      subroutine sub(a,b,x)
      real a(10),b(10),x

         do i=1,10
            a(i)=i
         enddo
         x=a(1)+a(5)+a(10)
         do j=1,10
            b(j)=j+x
         enddo

      end

      program main
      real a(10),b(10),x
      call sub(a,b,x)
      print *,a
      print *,b
      print *,x
      end
