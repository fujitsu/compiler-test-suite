      program main
      real*4 ra(10),s ,rb(10)
      logical * 4 ls,la(10),l4rc(10)
      data ra/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      data rb/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
      data la/.true.,.false.,.false.,.true.,.true.
     +    , .false.,.true.,.false.,.true.,.false./
      l4rc(1) = .true.
      l4rc(2) = .false.
      l4rc(3) = .true.
      l4rc(4) = .false.
      l4rc(5) = .true.
      l4rc(6) = .false.
      l4rc(7) = .true.
      l4rc(8) = .false.
      l4rc(9) = .true.
      l4rc(10) = .false.

      do 10 i=1,10
        if (la(i))  then
          if (l4rc(i)) then
            s = ra(i) + rb(i) + 1.
            ra(i) = s
            rb(i) = s
            s = ra(i) + rb(i)
          endif
        endif
  10  continue

      do 20 i=1,10
        if (la(i))  then
          if (l4rc(i)) then
            if (i.eq.1) then
              ls = ra(i).eq.i
              la(i) = ls
              ls = .not.la(i)
            endif
          endif
        endif
  20  continue
      write(6,*) '** real data    ** s  = 24.    = ' , s
      write(6,*) '** logical data ** ls = .true. = ' , ls
      stop
      end
