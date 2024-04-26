      program main
      real*8  a(40),b(40),c(40)
      data  a,b/40*1.d0,40*2.d0/,nn/16/
      data  c/40*3.d0/
      n=1
      do 10 i=1,nn
        b(n) = a(2)*c(i)
        a(n) = b(1)+c(i)
        n=n+2
  10  continue
      write(6,*) a
      write(6,*) b
      n=20
      do 20 j=1,nn,2
        n=n-2
        c(n) = b(17)-a(j)
        b(n) = c(3)/a(j)
  20  continue
      write(6,*) b
      write(6,*) c
      stop
      end
