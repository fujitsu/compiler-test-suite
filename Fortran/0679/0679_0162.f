      program main
      real*4 ra(10,10),rb(10,10)
      data ra/100*1./,rb/100*1./

      do 100 i=1,10
        do 10 j=1,5
          ra(j,i)=j+i
10      continue

        do 20 j=1,5
          rb(j,i)=j+i
20      continue
100   continue

      write(6,*) 'ra=',ra(3,3)
      write(6,*) 'rb=',rb(3,3)
      stop
      end
