      program main
      real b(100)
      data b/100*2./
      a=0

      do i=1,100
         b(i)=i
      enddo

      do i=1,100
         a=a+b(i)
      enddo
      print *,a
      end
