      logical*8 a(5)
      logical*4 l(5)
      integer*4 b(5)
      integer*8 c(5)
      data b/5*-1/

      do i=1,5
        b(i)=b(i)+i        
        c(i)=b(i)*i
      enddo
      write(6,*) c

      do i=1,5
        l(i)=b(i)
      enddo
      write(6,*) l

      do i=1,5
        a(i)=b(i)
      enddo
      write(6,*) a

      stop
      end
