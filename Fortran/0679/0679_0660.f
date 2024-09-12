      program main
      logical*4 l(10)  , ls(10) , lb(10)
      real*4 ra(10),rb(10),s(10)
      data ra/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      data rb/5.,5.,5.,5.,5.,5.,5.,5.,5.,5./
      data l/.true.,.false.,.true.,.false.,.true.
     +     , .false.,.true.,.false.,.true.,.false./
      data lb/10*.true./
      s=0
      rb=0

      do 10 i=1,10
        if (l(i)) then
          s(1) = ra(i) + 1.
          rb(i) = s(2)
          s(3) = rb(i) + 1.
        endif
  10  continue

      ls = .false.
      do 20 i=1,10
        if (l(i)) then
          ls(1) = ra(i).eq.i
          lb(i) = ls(2)
          ls(3) = .not.lb(i)
        endif
  20  continue
      write(6,*) '** real data ** s(1) = 10.  = ' ,  s(1)
      write(6,*) '** real data ** s(2) =  0.  = ' ,  s(2)
      write(6,*) '** real data ** s(3) =  1.  = ' ,  s(3)
      write(6,*) '** logical data ** ls(1) = .true.  = ' , ls(1)
      write(6,*) '** logical data ** ls(2) = .false. = ' , ls(2)
      write(6,*) '** logical data ** ls(3) = .true.  = ' , ls(3)
      stop
      end
