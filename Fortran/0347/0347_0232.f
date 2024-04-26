      program main
      real*8  a(10,10),b(10,10),c(20,20),d(10),e(20)
      equivalence (a(1,1),c(1,1)),(d(1),e(1))
      data  b,c/100*1.d0,400*2.d0/,e/20*3.d0/,nn/10/
      do 20 i=1,nn
       do 20 j=1,nn
        a(i,j) = b(i,j)+c(i,j)
        b(i,j) = e(j+1)*e(j+2)
        d(j) = a(i,j)/dfloat(j)
  20  continue
      write(6,*) ((a(i,j),i=1,10),j=1,10)
      write(6,*) ((b(i,j),i=1,10),j=1,10)
      write(6,*) d
      stop
      end
