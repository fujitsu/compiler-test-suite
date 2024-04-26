      program main
      integer i
      real*4 a(100)/100*0/,b(100)/100*0/,x/2/
      do 10 i=1,100
         a(i)=i
   10 continue
      do 20 i=1,100
         b(i)=amod(a(i),x)
   20 continue
      write(6,100) (b(i),i=1,100)
  100 format(1h ,6(f7.3,3x))
      stop
      end
