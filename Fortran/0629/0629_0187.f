      program main
      real a(6)
      a=0
      a(1)=1
      n=a(1)+1
      call sub(a,n)
      print *,a 
      end

      subroutine sub(a,n)
      real a(3,2),b(10)
      do i=1,n
         a(3,i)=i
         b(i)=i
      enddo
      print *,b(1),b(2) 
      end
