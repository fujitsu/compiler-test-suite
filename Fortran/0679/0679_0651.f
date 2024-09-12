      program main
      logical*4 l(10)  , ls , lb(10)
      real*4 ra(10),rb(10),s
      data ra/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      data rb/5.,5.,5.,5.,5.,5.,5.,5.,5.,5./
      data l/.true.,.false.,.true.,.false.,.true.
     +     , .false.,.true.,.false.,.true.,.false./
      data lb/10*.true./

      do 10 i=1,10
        if (l(i)) then
          s    = ra(i) + 1.
          rb(i) = s
          s    = rb(i) + 1.
        endif
  10  continue

      do 20 i=1,10
        if (l(i)) then
          ls    = ra(i).eq.i
          lb(i) = ls
          ls    = .not.lb(i)
        endif
  20  continue
      write(6,*) '** real data   ** s   = 11.     = ' ,  s
      write(6,*) '** logical data ** ls = .false. = ' , ls
      stop
      end
