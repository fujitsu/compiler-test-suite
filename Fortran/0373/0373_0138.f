      program main
      real*8,dimension(100) ::a,b,c
      a=1
      b=2
      c=3
      call sub(a,b,c,100)
      print*,a
      end

      subroutine sub(a,b,c,n)
      real*8,dimension(n):: a,b,c
      do i=2,n-1
         a(i-1)=b(i)*c(i+1)
      enddo
      end
      
