      program main
      real*8  a(20,20),b(20,20),c(20,20)
      data  a,b/400*1.d0,400*2.d0/,nn/20/,n/10/
      data  c/400*3.d0/
      do 10 i=1,nn
       do 10 j=1,n,2
        a(j*2,i) = b(5,i)*c(j,i)
        b(j,i) = a(2,i)+c(j,i)
  10  continue
      write(6,*) ((a(i,j),i=1,10),j=1,10)
      write(6,*) ((b(i,j),i=1,10),j=1,10)
      do 20 j=1,nn,2
       do 20 i=20,2,-2
        c(i,j) = b(18,j)-a(i,j)
        b(i-1,j) = c(3,j)/a(i,j)
  20  continue
      write(6,*) ((c(i,j),i=1,10),j=1,10)
      write(6,*) ((b(i,j),i=1,10),j=1,10)
      stop
      end
