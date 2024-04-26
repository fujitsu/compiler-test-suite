      dimension a(10),b(10)
      data a/10*1.0/,b/10*2.0/
      s=0
      do 10 i=1,10
        s = s + a(i)
  10  continue
      write(6,*) a
      write(6,*) s
      s=0
      do 20 i=1,10
        s = b(i)+s
  20  continue
      write(6,*) b
      write(6,*) s
      stop
      end
