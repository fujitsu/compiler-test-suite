      program main
      integer*4 i10s/0/,i11(5)/5*0/,i12(4)/4*0/,n4/4/
      logical*4 l10(10)/5*.true.,5*.false./
      data m/1/
      do 10 i=1,n4
        if (l10(3)) then
          i10s = i11(i) + i**m
          i11(i+1) = i11(i) + i10s
          i12(i) = i11(i) + i10s
        endif
  10  continue
      write(6,*) ' i11 = ',i11
      write(6,*) ' i12 = ',i12,' i = ',i
      stop
      end
