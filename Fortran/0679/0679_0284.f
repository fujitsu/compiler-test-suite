      dimension a1(10),a2(10),b(10),c(10)
      data a1,a2/10*0.0,10*0.0/,b/10*4.0/,c/10*16.0/
      do 10 i=1,10
        b(i) = c(i)
        a1(i) = sqrt(b(1))
  10  continue
      write(6,*) a1
      do 20 i=1,10
        a2(i) = c(i)
        a2(1) = sqrt(b(1))
  20  continue
      write(6,*) a2
      stop
      end
