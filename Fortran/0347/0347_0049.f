      program main
      integer i
      real*8 a(100)/100*0/,b(100)/100*0/,x/2/
      complex*16 c(100)
      do 10 i=1,100
         a(i)=i
   10 continue
      do 20 i=1,100
         if (i.gt.50) goto 20
         c(i)=dcmplx(a(i),x)
         b(i)=dmod(dble(c(i)),imag(c(i)))
   20 continue
      write(6,100) (b(i),i=1,100)
  100 format(1h ,6(f7.3,3x))
      stop
      end
