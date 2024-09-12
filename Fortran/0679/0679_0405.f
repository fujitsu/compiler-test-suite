      dimension a(11),b(10),c(10)
      data a/11*1.0/,b/10*9.0/,c/10*1.0/,s/0.0/
      do 10 i=2,10
        c(i) = c(i-1) + a(i+1)
        a(i) = sqrt(b(i)) + c(i)
        a(i) = a(i-1) + c(i)
  10  continue
      write(6,*) a,' i = ',i
      stop
      end
