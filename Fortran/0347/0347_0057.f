      dimension a(20),b(20),c(20)
      data a/20*3.0/,b/20*1.0/,c/20*2.0/
      do 10 i=1,18
        a(i+1) = a(i+2) + b(i)
        b(i) = a(i) - c(i)
        c(i) = b(i) * c(i)
  10  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
