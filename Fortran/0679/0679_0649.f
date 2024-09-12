      program main
      real*4 ra(10),s
      logical * 4 ls
      data ra/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./

      do 10 i=1,10
        if(i.eq.5) then
          s=ra(i)+1.
        else
          if(ra(i).lt.8.) s=ra(i)+1.
        endif
  10  continue

      do 20 i=1,10
        if(i.eq.5) then
          ls = ra(i).eq.i
        else
          if(ra(i).lt.8.) ls = ra(i).ne.i
        endif
  20  continue
      write(6,*) '** real data    ** s  = 8.      = ' , s
      write(6,*) '** logical data ** ls = .false. = '  , ls
      stop
      end
