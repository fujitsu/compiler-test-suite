      real*4 a(10)
      integer*4 i,b(10),c(10)
      data a/11.3,21.5,31.9,41.5,51.2,61.4,71.0,81.9,91.7,10.0/

      do i=1,10
          b(i)=anint(a(i))
      enddo

      do i=1,10
          c(i)=anint(a(i))
          if (b(i)==c(i)) then
            continue
          else
            write(6,*) "NG"
            stop
          endif
      enddo

      write(6,*) "OK"

      do i=1,10
        if (mod(i,2) == 1) then
          b(i)=anint(a(i))
        else
          b(i)=i*i
        endif
      enddo

      do i=1,10
        if (mod(i,2) == 1) then
          c(i)=anint(a(i))
        else
          c(i)=i*i
        endif
        if (b(i)==c(i)) then
          continue
        else
          write(6,*) "NG"
          stop
        endif
      enddo

      write(6,*) "OK"

      stop
      end
