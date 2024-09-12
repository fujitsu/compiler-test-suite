      program main
      dimension a(10),b(10)
      data a/10*1.0/,b/10*2.0/
      real*8  q(10)/10*0.0/
      do 10 i=2,10
        q(i) = sqrt(a(i)) + b(i)
  10  continue
      write(6,*) q,' i = ',i
      stop
      end
