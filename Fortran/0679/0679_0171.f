      program main
      real*4 ra(10,10),rb(10,10),rc(10,10)
      data ra/100*1./,rb/100*1./,rc/100*1./

      do 10 i=1,10
      do 10 j=1,5
        ra(j,i)=j+i
10    continue

      do 20 i=1,10
      do 20 j=1,2
        rb(j,i)=j+i
20    continue

      do 30 i=1,10
      do 30 j=1,5
        rc(i,j)=1.
30    continue

      do 40 i=1,10
      do 40 j=1,5
40      rc(i,j)=1.

      write(6,*) 'ra=',ra(1,1)
      write(6,*) 'rb=',rb(1,1)
      write(6,*) 'rc=',rc(1,1)
      stop
      end
