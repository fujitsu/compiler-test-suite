      program main
      real*4 ra(10,10,10,10),rb(10,10),rc(10,10,10,10)
      data ra/10000*1./,rb/100*1./,rc/10000*1./
      data ni/10/,nj/10/,nk/10/,nl/10/,m/1/

      do 33 i=1,10
      do 33 l=1,10
      do 33 j=1,10
      do 34 k=1,9
        ra(l,k,j,i)=ra(l,k+m,j,i)
 34   continue
 33   continue

      do 43 i=1,10
      do 43 l=1,9
      do 43 j=1,10
      do 44 k=1,10
        ra(l,k,j,i)=ra(l+m,k,j,i)
 44   continue
 43   continue

      write(6,*) 'ra=',ra(1,1,1,1)
      write(6,*) 'rb=',rb(1,1)
      write(6,*) 'rc=',rc(1,1,1,1)
      stop
      end
