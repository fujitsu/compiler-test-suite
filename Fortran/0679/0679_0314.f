      dimension a(10),b(10)
      data a/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      data b/2.,0.,3.,5.,3.,5.,8.,9.,0.,12./

      s = 0.0
      do 10 i=1,10
        s = s + 1.0
  10  continue
      write(6,*) s

      s = 0.0
      do 20 i=1,10
        if ( a(i) .gt. b(i) ) go to 20
        s = s + 2.0
  20  continue
      write(6,*) s

      s = 0.0
      do 30 i=1,10
        s = s + a(i)
  30  continue
      write(6,*) s

      s = 0.0
      do 31 i=1,10
        s = s + float(i)
  31  continue
      write(6,*) s

      s = 0.0
      do 40 i=1,10
        if ( a(i) .gt. b(i) ) go to 40
        s = s + a(i)
  40  continue
      write(6,*) s

      s = 0.0
      do 41 i=1,10
        if ( a(i) .gt. b(i) ) go to 41
        s = s + float(i)
  41  continue
      write(6,*) s
      stop
      end
