      integer*4 a(100)/100*0/
      integer*4 b(100)/100*2/
      integer*4 c(100)/100*2/


      do i=81,88
        a(88)=c(i)
        b(i)=a(i)
      enddo

      if (b(88).ne.2 .or. a(88).ne.2) goto 100

      a(59) = 100

      do i=61,68
        a(72)=c(i)
        a(59)=c(i)
        b(i)=a(i) + a(59)
      enddo

      do i=1,8
         if (b(i+60).ne.2 .or. a(72).ne.2 .or. a(59).ne.2) then
            write(6,*) (b(j),j=61,68),a(59),a(72)
            goto 101
         endif
      enddo

      write(6,*) 'OK'
      goto 101
 100  write(6,*) 'NG'
      write(6,*) b(88),a(88)
 101  continue
      end
