      program main
      real*4 ra(10),s
      logical * 4 ls  ,rl(10)
      data ra/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      data rl/5*.true.,5*.false./

      do 10 i=1,10
        if(i.eq.5) s=ra(i)+1.
  10  continue

      do 20 i=1,10
        if(i.eq.5) ls = rl(i)
  20  continue
      write(6,*) '*** real data   ***  s = 6.     = ' , s
      write(6,*) '*** logical data ** ls = .true. = ' , ls
      stop
      end
