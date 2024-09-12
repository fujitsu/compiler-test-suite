      program main
      real*8 ra(10,10,10,10),rb(10,10),rc(10,10,10,10)
      data ra/10000*1.d0/,rb/100*1.d0/,rc/10000*1.d0/

      do 31 i=1,10
      do 32 l=1,5
        rb(l,i)=dfloat(i+l)
      do 33 j=1,10
      do 34 k=1,10
        ra(j,k,l,i)=rc(j,k,l,i)
 34   continue
 33   continue
 32   continue
 31   continue

      do 41 i=1,10
      do 42 l=1,5
        rb(i,l)=dsin(dfloat(i+l))
      do 43 j=1,10
      do 44 k=1,10
        ra(j,k,l,i)=rc(j,k,l,i)
 44   continue
 43   continue
 42   continue
 41   continue

      write(6,*) 'ra = ',ra(1,1,1,1)
      write(6,*) 'rb = ',rb(1,1)
      write(6,*) 'rc = ',rc(1,1,1,1)
      stop
      end
