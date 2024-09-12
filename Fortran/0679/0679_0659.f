      program main
      real*4 ra(10),s(10)
      logical * 4 l(10) ,ls(10)
      data ra/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      data l/.true.,.false.,.true.,.false.,.true.
     +   ,   .false.,.true.,.false.,.true.,.false./
      data s/10*0./
      data ls/10*.true./

      do 10 i=1,10
         if (l(i)) then
            s(1) = ra(i) + 1.
         else
            s(2) = ra(i) + 2.
         endif
  10  continue

      do 20 i=1,10
         if (l(i)) then
           ls(1) = ra(i).eq.i
         else
           ls(2) = ra(i).ne.i
         endif
  20  continue
      write(6,*) '** real data **  s(1) = 10. = ' , s(1)
      write(6,*) '** real data **  s(2) = 12. = ' , s(2)
      write(6,*) '** logical data ** ls(1) = .true.  = '  , ls(1)
      write(6,*) '** logical data ** ls(2) = .false. = '  , ls(2)
      stop
      end
