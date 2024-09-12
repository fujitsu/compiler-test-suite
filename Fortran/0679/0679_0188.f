      program main
      real*4 ra(10),rb(10)
      data ra/10*1./,rb/10*1./

      do 33 i=2,9
      do 33 j=2,9
      do 33 k=2,9
      do 33 l=2,9
        ra(i)=ra(i+1)+rb(i)
 33   continue

      write(6,*) 'ra=',ra
      stop
      end
