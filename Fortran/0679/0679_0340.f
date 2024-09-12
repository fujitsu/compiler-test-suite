      dimension a(10),b(10),c(10),d(10),e(10)
      data a/5*1.0,5*1.0e-3/,b/5*1.0,5*1.0e-4/
      data d/10*1.0/,e/5*2.0,5*5.0/
      data m/1/
      s = 0.0
      do 20 i=1,10
        c(i) = a(i) * b(i)
        if ( m .gt. 2 ) go to 20
        if ( c(i) .lt. i ) go to 10
        d(i) = d(i) * e(i)
  10    s = s + d(i)
  20  continue
      write(6,*) d
      write(6,*) s
      stop
      end
