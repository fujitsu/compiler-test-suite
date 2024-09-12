      real*8 stime,etime
      real a(2048),b(2048),c(2048)
      integer x(2048)/2000*1,48*0/
      data a/2048*0/
      data b/2048*3/
      do i=1,128
        if(x(i).eq.1) then
          a(i) = sin(b(i))
        endif
      enddo
      print *,a(1),a(10),a(50),a(100),a(128)

      do i=1,256
        if(x(i).eq.1) then
          a(i) = sin(b(i))
        endif
      enddo
      print *,a(129),a(255),a(256)

      do i=1,512
        if(x(i).eq.1) then
          a(i) = sin(b(i))
        endif
      enddo
      print *,a(257),a(511),a(512)

      do i=1,1024
        if(x(i).eq.1) then
          a(i) = sin(b(i))
        endif
      enddo
      print *,a(513),a(1023),a(1024)

      do i=1,2048
        if(x(i).eq.1) then
          a(i) = sin(b(i))
        endif
      enddo
      print *,a(1025),a(2047),a(2048)
      end
