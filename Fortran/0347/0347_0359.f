      dimension a(10)
      s=0
      do 10 i=1,10
        a(i) = i
        t1 = a(i)+s
        s  = t1
  10  continue
      write(6,*) a
      write(6,*) s
      stop
      end
