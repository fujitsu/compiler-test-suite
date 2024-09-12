      logical*8 a(5)
      logical*4 l(5)
      integer*4 b(5)
      integer*8 c(5)
      data c/5*-1/

      do i=1,5
        b(i)=c(i)
      enddo
      write(6,*) b

      do i=1,5
        l(i)=c(i)
      enddo
      write(6,*) l

      do i=1,5
        a(i)=c(i)
      enddo
      write(6,*) a

      stop
      end
