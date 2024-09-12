      program main
      real*4 ra(10,10,10,10)
      data ra/10000*1./

      do 1000 k=1,10
        do 100 j=1,10
          do 10 i=1,10
            ra(1,i,j,k)=ra(2,k,i,j)+1.0
10        continue
100     continue
1000  continue

      write(6,*) 'ra=',ra(1,3,3,3)
      stop
      end
