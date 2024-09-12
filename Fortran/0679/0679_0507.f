      dimension a(10),b(10),c(10)
      data a/10*3.0/
      data b/4*1.0,2,5*1.0/,c/10*1.0/,n/1/
      m = 10
      do 10 i=1,m
        if ( b(i) .gt. c(i) ) go to 20
          a(i) = b(i) + c(n)
          n = n + 1
  10  continue
  20  write(6,*) a
      write(6,*) n
      stop
      end
