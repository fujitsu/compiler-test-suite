      dimension a(10),b(10),c(10)
      data b/10*1.0/,c/10*2.0/
      do 10 i=1,10
        a(i) = b(i) + c(i)
  10  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
