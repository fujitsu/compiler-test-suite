      integer*2   h
      real   *8   d
      dimension a(10)
      data a/10*1.0/
      h=0
      d=0
      do 10 i=1,10
        h = h + 1
  10  continue
      do 20 i=1,10
        d = d + a(10)
  20  continue
      write(6,*) h
      write(6,*) a
      write(6,*) d
      stop
      end
