      logical  l10(10)
      real*8   d31(10),res(10)
      complex*8 cd10s,cd30(10)
c
      data l10/.true.,.false.,.true.,.false.,.true.,.false.,.true.,
     1         .false.,.true.,.false./
      data cd30/10*2/
      data d31/10*0/
c
      do k = 1,10
         if (   l10(k)     )  then
            cd10s = 10+cd30(k)
         else
            cd10s =  cd30(k)
         endif
         d31(k) = 20 + cd10s 
      enddo
      write(6,*) d31
      end
