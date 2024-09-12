      program main
      real*4 ra(10),s,rb(10)
      logical * 4 ls
      data ra/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      data rb/1.,1.,1.,1.,1.,1.,1.,1.,1.,1./

      do 10 i=1,10
        if(i.eq.5) then
          s=ra(i)+1.
        else
          s=rb(i)+1.
        endif
  10  continue

      do 20 i=1,10
        if(i.eq.5) then
          ls = i.ne.ra(i)
        else
          ls = rb(i).eq.i
        endif
  20  continue
      write(6,*) '*** real data   *** s  = 2.      = ' ,  s
      write(6,*) '*** logical data ** ls = .false. = ' , ls
      stop
      end
