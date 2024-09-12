      program main
      real*8 ra(10,10,10),rb(10,10,10),rc(10,10,10)
      data ra/1000*1.d0/,rb/1000*1.d0/,rc/1000*1.d0/

      do 30 i=1,10
        ra(i,i,i) = dfloat(i)
      do 30 j=1,5
      do 30 k=1,5
        rb(i,j,k)=rc(i,j,k)
30    continue

      do 40 i=1,10
        ra(i,i,i) = dsin(dfloat(i))
      do 40 j=1,5
      do 40 k=1,5
        rb(i,j,k)=rc(i,j,k)
40    continue

      do 50 i=1,10
      do 50 j=1,5
        ra(i,j,i) = i + j
      do 50 k=1,5
        rb(i,j,k)=rc(i,j,k)
50    continue

      do 60 i=1,10
      do 60 j=1,5
        ra(i,j,i) = dsin(dfloat(i+j))
      do 60 k=1,5
        rb(i,j,k)=rc(i,j,k)
60    continue

      write(6,*) 'ra = ',ra(1,1,1)
      write(6,*) 'rb = ',rb(1,1,1)
      write(6,*) 'rc = ',rc(1,1,1)
      stop
      end
