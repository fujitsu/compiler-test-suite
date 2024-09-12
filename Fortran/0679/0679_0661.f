      program main
      real*4 ra(10),rb(10)  , s(10)
      logical * 4 ls(10)
      data ra/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      data rb/5.,5.,5.,5.,5.,5.,5.,5.,5.,5./

      do 10 i=1,10
        if (i.eq.1) then
          s(1) = ra(i) + 1.
        else if (i.eq.5) then
          s(2) = rb(i) + 1.
        else if (i.eq.10) then
          s(3) = ra(i) + rb(i)
        endif
  10  continue

      do 20 i=1,10
        if (i.eq.1) then
          ls(1) = ra(i).eq.i
        else if (i.eq.5) then
          ls(2) = rb(i).eq.i
        else if (i.eq.10) then
          ls(3) = ra(i).eq.rb(i)
        endif
  20  continue
      write(6,*) '** real data   ** s(1)   =  2.     = ' , s(1)
      write(6,*) '** real data   ** s(2)   =  6.     = ' , s(2)
      write(6,*) '** real data   ** s(3)   = 15.     = ' , s(3)
      write(6,*) '** logical data ** ls(1) = .true.  = ' , ls(1)
      write(6,*) '** logical data ** ls(2) = .true.  = ' , ls(2)
      write(6,*) '** logical data ** ls(3) = .false. = ' , ls(3)
      stop
      end
