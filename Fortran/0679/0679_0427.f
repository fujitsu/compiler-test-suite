      program main
      real*8  p(10),q(10)
      data    p/10*1./,q/10*2./
      data n/1/,is/0/
      do 10 i=1,10
        ix = p(i) + q(i)
        is = is + ix**n
  10  continue
      write(6,*) is
      stop
      end
