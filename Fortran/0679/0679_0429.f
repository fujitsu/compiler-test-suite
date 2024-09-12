      program main
      real*8  p(10),q(10)
      data    p/10*1./,q/10*2./
      dimension l(10),m(10)
      data n/1/,l/10*0/,m/10*2/
      do 10 j=1,2
       l(j) = l(j) + j
       do 10 i=1,10
         ix = p(i)*q(i)
         l(j) = l(j) + ix + m(i)**n
  10  continue
      write(6,*) l
      stop
      end
