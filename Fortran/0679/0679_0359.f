      dimension a(10),b(10),c(10),m(10)
      data a/10*0.0/
      data m/0,2,4,5,4,7,7,8,10,8/
      data b/10*1.0/
      data c/10*2.0/
      do 100 i=1,10
        if ( m(i) - i ) 10,20,30
  10      a(i) = b(i) / c(i)
          if (i) 11,11,12
  11      go to 100
  20      a(i) = b(i) + c(i)
          if (i) 21,21,22
  21      go to 100
  30      a(i) = b(i) - c(i)
          if (i) 31,31,32
  31      go to 100
  12      a(i) = 2*a(i)
          go to 100
  22      a(i) = 4*a(i)
          go to 100
  32      a(i) = 5*a(i)
 100  continue
      write(6,*) a
      stop
      end
