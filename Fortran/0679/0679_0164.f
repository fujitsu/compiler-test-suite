      program main
      real*4 ra(10,10,10)
      data ra/1000*1./

      do 1000 k=1,10
        do 100 j=1,10
          do 10 i=1,10
            ra(i,j,k)=1.0
10        continue
100     continue
1000  continue

      write(6,*) i
      stop
      end
