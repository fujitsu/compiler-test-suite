      subroutine sub(a,b,x,y)
      real a(10),b(10),x,y
      x = 0.0
      do k=1,10
         a(k)=a(k)+k
         do i=1,10
            b(i)=a(i)+i
         enddo
         y=b(k)
      enddo

      end

      program main
      real a(10),b(10),x,y
      data a/1,2,3,4,5,6,7,8,9,10/
      call sub(a,b,x,y)
      print *,a
      print *,b
      print *,x,y
      end


