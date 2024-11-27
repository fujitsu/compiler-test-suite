      subroutine sub1(a,b,x)
      real a(10),b(10),x

         do i=1,10
            a(i)=i
         enddo
         x=sin(a(5))
         do j=1,10
            b(j)=j+x
         enddo
         print *,b

      end

      subroutine sub2
      end

      program main
      real a(10),b(10),x
      call sub1(a,b,x)
      print *,a
      print *,b
      print *,x
      end





