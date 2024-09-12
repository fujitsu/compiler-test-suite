      dimension a(10),b(10)
      data b/10*1.0/
      do 10 i=1,10
        a(i) = sin(b(i))
  10  continue
      write(6,100) a
  100 format(10f5.1)
      stop
      end
