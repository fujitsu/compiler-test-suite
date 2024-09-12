      program main
      real*4 ra(10,10,10,10),rb(10)

      do 10000 l=1,10
      rb(l)=1.0
      do 1000 k=1,10
        do 100 j=1,10
          do 10 i=1,10
            ra(i,j,k,l)=1.0
10        continue
100     continue
1000  continue
10000 continue

      write(6,*) 'ra=',ra(3,3,3,3)
      stop
      end
