      complex*8 a(10),b(10),c(10)
      a=0;b=0;c=0
      do i=1,10
         a(i) = b(i) + c(i)
      enddo
      write(1,*) a
      print *,'pass'
      end
