      program main
      real*4 ra(10,10,10,10),rb(10,10,10,10)
      data ra/10000*1./,rb/10000*1./
      do 33 i=2,9
      do 33 j=2,9
      do 33 k=2,9
      do 33 l=2,9
        ra(i,j,k,l)=ra(i,j+1,k,l-1)+rb(i,j,k,l)
 33   continue
      write(6,'(a,10000f11.8)') 'ra=',ra
      stop
      end
