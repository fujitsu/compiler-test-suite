      real*8    a(10),b(10),c(10),s
      data a/10*1.0/,b/10*2.0/,c/10*1.0/
      do 10 i=2,10
        s = sqrt(a(i)) + b(i)
        c(i) = c(i-1) + s
  10  continue
      write(6,*) c,' i = ',i
      stop
      end
