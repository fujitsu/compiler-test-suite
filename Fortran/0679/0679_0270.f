      dimension a(10),b(10),c(10)
      data a/10*0.0/,b/10*1.0/,c/10*0/
      data const/1.0/
      do 100 j=1,10
        c(j) = b(j)
        do 10 i=1,10
          a(i) = b(i)
  10    continue
        do 20 i=1,10
          a(i) = const
  20    continue
        do 30 i=1,10
          do 40 k=1,10
            a(k) = c(k)
  40      continue
  30    continue
 100  continue
      write(6,*) a
      stop
      end
