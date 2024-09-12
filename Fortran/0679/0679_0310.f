      dimension ra(10)
      logical*4 l(10)
      data ra/10*4./
      data l/2*.true.,2*.false.,2*.true.,2*.true.,2*.false./

      do 20 i=2,10
        if ( l(i) ) then
          ra(i) = sqrt(ra(i-1))
        endif
  20  continue
      write(6,*) ra
      stop
      end
