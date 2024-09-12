      logical*8 a(5)
      integer*8 c(5)
      data a/5*0/
      data c/5*-1/
      do i=1,2
        a(i)=c(i)
      enddo
      write(6,*) a
      stop
      end
