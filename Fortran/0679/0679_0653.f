      program main
      real*4 ra(10),s , x
      logical * 4 ls   , es
      data ra/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      equivalence (s,x) , (ls,es)

      do 10 i=1,10
        s = ra(i) + 1.
  10  continue

      do 20 i=1,10
        ls = ra(i).eq.i
  20  continue
      write(6,*) '** real data    ** s  = 11.    = ' , s
      write(6,*) '** logical data ** ls = .true. = ' , ls
      stop
      end
