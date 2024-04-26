      dimension a(10)
      data a/1.0,2.0,3.0,4.0,5.0,6.0,7.,8.,9.,10./
      s=0
      do 10 i=1,10
        s = s + a(i)
        k = s
  10  continue
      write(6,*) a
      write(6,*) s,k
      do 20 i=1,10
        k = s
        s = s + a(i)
  20  continue
      write(6,*) a
      write(6,*) s,k
      do 30 i=1,10
        s = s + a(i)
        s = k
  30  continue
      write(6,*) a
      write(6,*) s,k
      stop
      end
