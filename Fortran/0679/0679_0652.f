      program main
      logical*4 ls
      real*4 ra(10),rb(10) ,s
      data ra/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      data rb/5.,5.,5.,5.,5.,5.,5.,5.,5.,5./

      do 10 i=1,10
        if(i.eq.4) then
          s=ra(i) +  rb(i)  - 1.
        endif
  10  continue

      do 11 i=1,10
        if(i.eq.4) then
         ls=ra(i).ge.rb(i)
        endif
  11  continue
      write(6,*) '** s = 8.   =' , s
      write(6,*) '** ls=.false.=',ls
      stop
      end
