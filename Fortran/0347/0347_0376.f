      dimension a(10)
      data a/10*1.0/
      s=0
      t=0
      do 10 i=1,10
        s = a(i) - s
  10  continue
      do 20 i=1,10
        t = t - a(i)
  20  continue
      write(6,*) a
      write(6,*) s,t
      stop
      end
