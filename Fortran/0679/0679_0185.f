      program main
      real*4 ra(10,10,10,10),rb(10,10,10,10),rc(10,10,10,10)
      data ra/10000*1./,rb/10000*1./,rc/10000*1./
      data ni/10/,nj/10/,nk/10/,nl/10/,m/0/

      do 33 i=1,10
      do 33 l=1,10
      do 33 j=1,10
      do 33 k=1,10
        ra(l,k,j,i)=rc(l,k+m,j,i)
 33   continue

      do 13 i=1,10
      do 13 l=1,10
      do 13 j=1,10
      do 13 k=1,10
        ra(l,k,j,i)=rc(l,k,j+m,i)
 13   continue

      do 23 i=1,10
      do 23 l=1,10
      do 23 j=1,10
      do 23 k=1,10
        ra(l,k,j,i)=rc(l+m,k,j,i)
 23   continue

      do 43 i=1,10
      do 43 l=1,10
      do 43 j=1,10
      do 43 k=1,10
        ra(l,k,j,i)=rc(l,k,j,i+m)
 43   continue

      do 53 i=1,10
      do 53 l=1,10
      do 53 j=1,10
      do 53 k=1,10
        ra(l,k,j,i)=rc(l,k,j,i)
 53   continue

      write(6,*) 'ra=',ra
      stop
      end
