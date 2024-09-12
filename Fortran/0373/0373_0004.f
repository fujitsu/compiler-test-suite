      real*8 a(10),b(10),c(10)
      integer*4 i
      data a/11,21,31,41,51,61,71,81,9,10/

      do i=1,10
          b(i)=exp(a(i))
      enddo

      write(6,*) b

      do i=1,10
        if (mod(i,2) == 1) then
          b(i)=exp(a(i))
        else
          b(i)=i*i
        endif
      enddo

      write(6,*) b

      stop
      end
