      program main
      real*4 ra(10),s(10),rb(10)
      logical * 4 ls(10)
      data ra/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      data rb/11.,12.,13.,14.,15.,16.,17.,18.,19.,20./

      do 10 i=1,10
        s(i) = ra(i) + 1.
        if(i.eq.6) s(1) = rb(i) + 1.
  10  continue

      do 20 i=1,10
        ls(i) = ra(i).eq.i
        if(i.eq.6) ls(1) = rb(i).eq.i
  20  continue
      write(6,*) '** real data ** s(1) = 17.  =  ' , s(1)
      write(6,*) '** logical data ** ls(1) = .false. = ' , ls(1)
      stop
      end
