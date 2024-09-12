      program main
      real*4 ra(10),s,rb(10)
      logical * 4 ls
      data ra/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      data rb/11.,12.,13.,14.,15.,16.,17.,18.,19.,20./

      do 10 i=1,10
        s=ra(i)+1.
        if(i.eq.6) s=rb(i)+1
  10  continue

      do 20 i=1,10
        ls = ra(i).eq.i
        if(i.eq.6) ls = rb(i).eq.ra(i)
  20  continue
      write(6,*) '** real data    ** s  = 11.    = ' , s
      write(6,*) '** logical data ** ls = .true. = ' , ls
      stop
      end
