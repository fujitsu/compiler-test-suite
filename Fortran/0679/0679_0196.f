      program main
      real*4 ra(100),rb(100),rc(100,100)
      data ra/100*1./,rb/100*1./,rc/10000*1./

      do 33 l=1,100
      do 33 k=1,100
      do 33 i=1,100
        rc(i,l)=rb(i)+ra(i)
 33   continue

      write(6,*) 'ra=',ra
      stop
      end
