      dimension a1(10),a2(10),a3(10),b(10),c(10),d(10)
      logical l(10)
      data l/5*.true.,5*.false./
      data a1/10*0.0/,a2/10*0./,a3/10*0./
      data b/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      data c/1.,3.,5.,7.,9.,1.,3.,5.,7.,9./
      data d/2.,4.,6.,8.,10.,2.,4.,6.,8.,10./

      do 10 i=1,10
        if ( l(i) ) then
          a1(i) = b(i)
        else
          a1(i) = c(i)
        endif
  10  continue
      write(6,*) a1
      do 20 i=1,10
        if ( .not.l(i) ) then
          a2(i) = c(i)
        else
          a2(i) = d(i)
        endif
  20  continue
      write(6,*) a2
      do 30 i=1,10
        if ( l(i) ) then
          if (a1(i) .gt. a2(i) ) then
            a3(i) = b(i)
          else
            a3(i) = c(i)
          endif
        else
          if (a1(i) .eq. a2(i) ) then
            a3(i) = 3.3
          else
            a3(i) = 4.4
          endif
        endif
  30  continue
      write(6,*) a3
      stop
      end
