      dimension a(10),b(10),c(10)
      integer*2 i
      data b/10*1.0/,c/10*2.0/
      do 10 i=1,10
        a(i) = b(i) + c(i)
  10  continue
      write(6,*) a
      stop
      end
