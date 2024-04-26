      dimension   a(20),b(20),c(20)
      data   a/20*2.0/,b/20*3.0/,c/20*4.0/,n/2/,m/1/
      do 10 i=2,10
        a(i+n) = b(i) + c(i)
        b(i) = a(i-m) * c(i)
  10  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
