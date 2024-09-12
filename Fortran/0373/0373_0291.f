      real*8 stime,etime
      integer a(2048),b(2048),c(2048)
      integer x(2048)/2000*1,48*0/
      integer y(2048)/2000*1,48*0/
      integer z(2048)/2000*1,48*0/
      data a/2048*0/
      data b/2048*7/
      data c/2048*2/

      do i=1,128
        if(x(i).eq.1) then
          a(i) = b(i) * c(i)
        else
          a(i) = b(i) / c(i)
        endif
      enddo
      print *,a(1),a(10),a(50),a(100),a(128)

      do i=1,128
        if(x(i).eq.1) then
          if(y(i).eq.1) then
            a(i) = b(i) + c(i)
          endif
        endif
      enddo
      print *,a(1),a(10),a(50),a(100),a(128)

      do i=1,128
        if(x(i).eq.1) then
          if(y(i).eq.1) then
            if(z(i).eq.1) then
              a(i) = b(i) - c(i)
            endif
          endif
        endif
      enddo
      print *,a(1),a(10),a(50),a(100),a(128)
      end
