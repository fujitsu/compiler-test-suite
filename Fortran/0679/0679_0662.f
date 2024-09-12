      program main
      real*4 ra(10),s(10) , x
      logical * 4 ls(10) ,es
      data ra/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      equivalence (s(1),x)  ,(ls(1),es)
      do 10 i=1,10
        s(1) = ra(i) + 1.
  10  continue
      do 20 i=1,10
        ls(1) = ra(i).eq.i
  20  continue
      write(6,*) '** real data ** s(1) = 11. = ' , s(1)
      write(6,*) '** logical data ** ls(1) = .true. = ' , ls(1)
      stop
      end
