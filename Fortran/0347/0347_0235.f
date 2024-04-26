      program main
      real*8  a1(10,10),b1(10,10),c(10,10),e(20)
      real*8  a2(20,20),d1(20,20)
      equivalence (a1(1,1),a2(1,1))
      equivalence (d1(1,1),b1(1,1))
      data  a2,d1/400*1.d0,400*2.d0/,nn/10/
      data  c/100*3.d0/,e/20*5.d0/
      do 10 i=1,nn
       do 10 j=1,nn
        a1(i,j) = d1(j,i)*e(j)
        b1(i,j) = a2(j,i)
        c(i,j) = a2(i,j+nn)/d1(i,1)
  10  continue
      write(6,*) ((a1(i,j),i=1,10),j=1,10)
      write(6,*) ((b1(i,j),i=1,10),j=1,10)
      write(6,*) ((c(i,j),i=1,10),j=1,10)
      stop
      end
