      subroutine sub(a,b,x,n)
      real a(n),b(n),x

         do i=1,n
            a(i)=i
         enddo
         x=a(1)+a(5)+a(n)
         do j=1,n
            b(j)=j+x
         enddo

      end

      program main
      real a(10),b(10),x
      call sub(a,b,x,10)
      print *,a
      print *,b
      print *,x
      end
