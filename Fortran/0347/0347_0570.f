      dimension a(20),b(20),c(20),d(20),e(20),f(20)
      data c/10*2.0,10*0/,d/10*3.,10*0/,e/10*4.,10*0/,f/10*5.,10*0/
      do 10 i=1,20
        b(i) = d(i)
  20    a(i) = b(i) + c(i)
  30    e(i) = f(i)
  10  continue
      write(6,*) a
      write(6,*) b
      write(6,*) e
      stop
      end
