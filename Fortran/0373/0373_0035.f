      logical*8 a(5)
      logical*4 l(5)
      integer*4 b(5)
      integer*8 c(5)
      data l/.true.,.true.,.true.,.true.,.true./

      do i=1,5
        a(i)=l(i)
      enddo
      write(6,*) a

      do i=1,5
        b(i)=l(i)
      enddo
      write(6,*) b

      do i=1,5
        c(i)=l(i)
      enddo
      write(6,*) c

      stop
      end
