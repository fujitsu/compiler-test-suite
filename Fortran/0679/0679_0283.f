      dimension a(10),b(10),c(10),d(10)
      data b/10*4.0/,c/10*2.0/
      do 10 j=1,10
        d(j) = b(j)
        do 10 i=1,10
          a(i) = b(i) / c(i)
  10  continue
      write(6,*) a
      write(6,*) d
      stop
      end
