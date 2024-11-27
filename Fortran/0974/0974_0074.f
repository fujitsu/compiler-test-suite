      subroutine sub(a,b,x)
      real a(10),b(10),x

         do i=1,10
            a(i)=i
         enddo
         print *,a
         do j=1,10
            b(j)=j+x
         enddo
         print *,b

      end

      program main
      real a(10),b(10),x
      x=0
      call sub(a,b,x)
      print *,a
      print *,b
      print *,x
      end





