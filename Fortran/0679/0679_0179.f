      program main
      real*4 ra(10,10,10,10),rb(10,10),rc(10,10,10,10)
      data ra/10000*1./,rb/100*1./,rc/10000*1./

      do 30 i=1,10
      do 30 l=1,5
        rb(l,i)=i+l
      do 30 j=1,10
      do 30 k=1,10
        ra(j,k,l,i)=rc(j,k,l,i)
 30   continue

      do 40 i=1,10
      do 40 l=1,5
        rb(l,i)=i+l
      do 40 j=1,10
      do 40 k=1,10
 40     ra(j,k,l,i)=rc(j,k,l,i)

      write(6,*) 'ra=',ra(1,1,1,1)
      write(6,*) 'rb=',rb(1,1)
      write(6,*) 'rc=',rc(1,1,1,1)
      stop
      end