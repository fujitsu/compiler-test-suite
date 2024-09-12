      program main
      integer*4 n8/8/
      real*8    d10(9),d11(8),d12(9)
      data      d10,d12/18*0/,d11/1,2,3,4,5,6,7,8/,m/1/
      real*4    r10(8),r11(8),r12(8)
      data      r11/8*1/,r12/1,2,3,4,5,6,7,8/,r10/2,3,4,5,6,7,8,9/
      logical*4 l10(8)/.true.,.false.,.true.,.false.,.true.,.false.,
     1                 .true.,.false./
      logical*4 l11(8)/2*.true.,2*.false.,2*.true.,2*.false./
      logical*1 lb10(8)/2*.true.,2*.false.,2*.true.,2*.false./
      do 10 i=2,n8
        if (l10(i)) go to 20
          if (l11(i)) go to 40
 30         d10(i) = d10(i-1) + d11(i)
            d12(i) = d10(i) + d11(i)**m
            go to 10
 20       if (lb10(i)) go to 30
 40         r10(i) = r10(i-1)*r11(i)
            r11(i) = r10(i) + r12(i)
 10   continue
      write(6,*) ' d10 = ',d10
      write(6,*) ' d12 = ',d12
      write(6,*) ' r10 = ',r10
      write(6,*) ' r11 = ',r11,' i = ',i
      stop
      end
