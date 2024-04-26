      program main
      parameter(n=1000)
      real*8 a(n)

      do i=1,n
         a(i)=sin(real(i))
      enddo
      print *,a(n)

      end
