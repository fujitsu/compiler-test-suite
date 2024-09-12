      program main
      real*4 ra(10,10,10,10),rb(10,10),rc(10,10,10,10)
      data ra/10000*1./,rb/100*1./,rc/10000*1./
      data ni/10/,nj/10/,nk/10/,nl/10/

      do 33 i=1,ni
      do 33 l=1,nl
      do 33 j=1,nj
      do 34 k=1,nk
        ra(l,k,j,i)=rc(l,k,j,i)
 34   continue
 33   continue

      do 43 i=1,ni
      do 43 l=1,nl
      do 43 j=1,10
      do 44 k=1,10
        ra(l,k,j,i)=rc(l,k,j,i)
 44   continue
 43   continue

      do 53 i=1,ni
      do 53 l=1,nl
      do 53 j=1,10
      do 54 k=1,10
        ra(i,j,k,l)=rc(i,j,k,l)
 54   continue
 53   continue

      do 63 i=1,ni
      do 63 l=1,nl
      do 63 j=1,10
      do 64 k=1,5
        ra(i,j,k,l)=rc(i,j,k,l)
 64   continue
 63   continue

      write(6,*) 'ra=',ra(1,1,1,1)
      write(6,*) 'rb=',rb(1,1)
      write(6,*) 'rc=',rc(1,1,1,1)
      stop
      end
