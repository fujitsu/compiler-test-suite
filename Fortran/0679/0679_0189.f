      program main
      real*4 ra(10,10),rb(10,10)
      data ra/100*1./,rb/100*1./

      do 33 i=2,9
      do 33 j=2,9
      do 33 k=2,9
      do 33 l=2,9
        ra(i,k)=ra(i-1,k+1)+rb(i,k)
 33   continue

      write(6,*) 'ra=',ra
      stop
      end