      program main
      real*4 ra(10,10,10),rb(10,10,10),rc(10,10,10),rd(10)
      data ra/1000*1./,rb/1000*1./,rc/1000*1./,rd/10*1./

      do 10 l=1,10
        rd(l)=sin(float(l))
      do 10 i=1,10
      do 10 j=1,5
        ra(j,i,l)=j+i
10    continue

      do 11 l=1,10
        rd(l)=0.
      do 11 i=1,10
      do 11 j=1,5
        ra(j,i,l)=j+i
11    continue

      do 20 l=1,10
        rd(l)=sin(float(l))
      do 20 i=1,10
      do 20 j=1,2
        rb(j,i,l)=j+i
20    continue

      do 21 l=1,10
        rd(l)=0.
      do 21 i=1,10
      do 21 j=1,2
        rb(j,i,l)=j+i
21    continue

      do 30 l=1,10
        rd(l)=sin(float(l))
      do 30 i=1,10
      do 30 j=1,5
        rc(i,j,l)=1.
30    continue

      do 31 l=1,10
        rd(l)=0.
      do 31 i=1,10
      do 31 j=1,5
        rc(i,j,l)=1.
31    continue

      do 40 l=1,10
        rd(l)=sin(float(l))
      do 40 i=1,10
      do 40 j=1,5
40      rc(i,j,l)=1.

      do 41 l=1,10
        rd(l)=0.
      do 41 i=1,10
      do 41 j=1,5
41      rc(i,j,l)=1.

      write(6,*) 'ra=',ra(1,1,1)
      write(6,*) 'rb=',rb(1,1,1)
      write(6,*) 'rc=',rc(1,1,1)
      stop
      end
