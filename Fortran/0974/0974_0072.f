      subroutine sub(a,b,x,y)
      real a(10),b(10),x,y

         do i=1,10
            a(i)=i
            x=a(i)
         enddo
         y=x+a(5)
         do j=1,10
            b(j)=j+y-x
         enddo

      end

      program main
      real a(10),b(10),x,y
      call sub(a,b,x,y)
      print *,a
      print *,b
      print *,x
      print *,y
      end
