      program main
      real*4  a(20),b(20),c(20)
      data  c,b/20*1,20*2./
      data a/20*0/
      do 10 i=1,10
       do 10 j=i,20
        a(j) = a(i)+c(i)
  10  continue
      do 20 i=1,15
       do 20 k=1,i
        a(k) = a(i)*b(k)
  20  continue
      do 30 l=1,20
       do 30 n=l,10
        c(n) = a(n)+b(n)
        b(n) = c(l)-a(l)
  30  continue
      do 40 i1=1,15
       do 40 i2=1,i1
        c(i2) = a(i1)+b(i2)
        b(i2) = c(i1)-a(i2)
  40  continue
      write(6,*) a
      write(6,*) c
      write(6,*) b
      stop
      end
