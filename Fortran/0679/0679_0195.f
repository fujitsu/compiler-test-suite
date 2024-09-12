      program main
      real*4 ra(100),rb(100),rc(100)
      data ra/100*1./,rb/100*1./,rc/100*1./

      do 33 k=1,100
      do 33 i=1,100
        ra(i)=rb(i)+rc(i)
 33   continue

      write(6,*) 'ra=',ra
      stop
      end
