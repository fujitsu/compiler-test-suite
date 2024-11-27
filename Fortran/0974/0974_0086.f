      subroutine sub(a,b,x,y)
      real a(10),b(10),x
      complex y

         do i=1,10
            a(i)=i+CMPLX(y)
         enddo
         x=a(1)+CMPLX(y)
         do j=1,10
            b(j)=j+x+CMPLX(y)
         enddo
         
      end

      program main
      real a(10),b(10),x
      complex y
      data y/(1.0,2.0)/
      call sub(a,b,x,y)
      print *,a
      print *,b
      print *,x
      print *,y
      end
