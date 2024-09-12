      dimension a(10,10),b(10,10)
      data a/100*0.0/,b/100*1.0/
      s = 0.0
      do 10 j=2,10
        do 10 i=1,10
          s = s + a(i,j)
          a(i,j-1) = b(i,j)
  10  continue
      write(6,*) a
      write(6,*) s
      stop
      end
