      real*8 a(10)
      integer*4 i,b(10),c(10)
      data a/-11.3,8388608.111,8388609.111,0,-8388608.008,          
     1       -8388609.666,0.009,1.001,0.1,-0.1/                     

      do i=1,10
          b(i)=dnint(a(i))
      enddo

      do i=1,10
          c(i)=dnint(a(i))
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
          b(i)=dnint(a(i))
        else
          b(i)=i*i
        endif
      enddo

      do i=1,10
        if (mod(i,2) == 1) then
          c(i)=dnint(a(i))
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
