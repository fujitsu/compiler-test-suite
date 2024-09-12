      program main
      real*4 ra(10),s,rb(10)
      logical * 4 ls , lb(10)
      data ra/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      data rb/5.,5.,5.,5.,5.,5.,5.,5.,5.,5./
      data lb/10*.true./

      do 10 i=1,10
        s=ra(i)+1
        rb(i)=s+ra(i)
        s=rb(i)+1
  10  continue

      do 20 i=1,10
        ls = ra(i).eq.i
        lb(i) = ls
        ls = .not.lb(i)
  20  continue
      write(6,*) '*** real data   *** s = 22.    =  ' , s
      write(6,*) '*** logical data ** ls = .false.= ' , ls
      stop
      end
