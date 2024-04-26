      integer*8 a(100)/100*0/
      integer*8 b(100)/100*2/
      integer*8 c(100)/100*2/


      do i=81,90
        a(90)=c(i)
        b(i)=a(i)
      enddo

      if (b(90).ne.2 .or. a(90).ne.2) goto 100

      a(59) = 100

      do i=61,70
        a(72)=c(i)
        a(59)=c(i)
        b(i)=a(i) + a(59)
      enddo

      do i=1,10
         if (b(i+60).ne.2 .or. a(72).ne.2 .or. a(59).ne.2) then
            write(6,*) (b(j),j=61,70),a(59),a(72)
            goto 101
         endif
      enddo

      write(6,*) 'OK'
      goto 101
 100  write(6,*) 'NG'
      write(6,*) b(90),a(90)
 101  continue
      end
