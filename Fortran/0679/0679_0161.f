      program main
      real*4 ra(10,10),rb(10,10)
      data ra/100*1./,rb/100*1./

      do 11 i=1,10
        a=0.5
        do 10 j=1,5
          ra(j,i)=j+i
10      continue
11    continue

      do 21 i=1,10
        do 20 j=1,5
          rb(j,i)=j+i
20      continue
        a=0.5
21    continue

      write(6,*) 'ra=',ra(1,1)
      write(6,*) 'rb=',rb(1,1)
      stop
      end
