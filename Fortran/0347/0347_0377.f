      dimension a(10),b(10)
      data a/10*1.0/,b/10*2.0/
      s=0
      t=0
      do 10 i=1,10
        t = t * b(i)
        s = a(i) - b(i)*3 + s
  10  continue
      write(6,*) a
      write(6,*) s,t
      stop
      end
