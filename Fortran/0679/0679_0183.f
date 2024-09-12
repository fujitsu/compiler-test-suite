      program main
      real*4 ra(10,10,10,10),rb(10,10,10,10),rc(10,10,10,10)
      data ra/10000*1./,rb/10000*1./,rc/10000*1./
      data ni/10/,nj/10/,nk/10/,nl/10/,m/0/

      do 33 i=1,10
      do 33 l=1,10
      do 33 j=1,10
      do 34 k=1,10
        ra(l,k,j,i)=rc(l,k+m,j,i)
 34   continue
 33   continue

      do 43 i=1,10
      do 43 l=1,10
      do 43 j=1,10
      do 44 k=1,10
        rb(l,k,j,i)=rc(l+m,k,j,i)
 44   continue
 43   continue

      write(6,*) 'ra=',ra
      write(6,*) 'rb=',rb
      stop
      end
