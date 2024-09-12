      program main
      real*8    d10s/0/,d10(4)/1,2,3,4/,d11(5)/5*0/,d12(5)/5*0/
      logical*4 l10(10)/10*.true./ ,l10s/.true./
      data      n4/4/,m/1/
      do 10 i=1,n4
        if (l10s) then
          if (l10(i)) then
            d10s = d10(i) + i**m
            d11(i+1) = d11(i) + d10s
            d12(i) = d11(i) + d10s
          endif
        endif
  10  continue
      write(6,*) ' d11 = ',d11
      write(6,*) ' d12 = ',d12
      stop
      end
