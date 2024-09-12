      program main
      real a(10),b(10),c(10)
      data b,c/10*10,10*2/

      do i=1,10
         a(i)=b(i)+c(i)
      enddo
      write(6,*) a

      end
