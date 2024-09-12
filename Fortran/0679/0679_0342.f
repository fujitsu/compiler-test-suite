      dimension a(10),b(10),c(10),d(10),e(10)
      data a/5*1.0,5*1.0e-3/,b/5*1.0,5*1.0e-4/
      data d/10*1.0/,e/5*2.0,5*5.0/
      c=0
      do 20 i=1,10
        if ( i .gt. 7 ) go to 20
        c(i) = a(i) * b(i)
        if ( c(i) .gt. 1.0e-6 ) go to 20
        d(i) = d(i) * e(i)
  20  continue
      write(6,*) c
      write(6,*) d
      stop
      end
