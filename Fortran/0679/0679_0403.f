      dimension a(10),b(10),c(10)
      data a/10*1.0/,b/10*4.0/,c/10*1.0/,x/4.0/
      do 10 i=2,10
        s = a(i) + sqrt(b(i))
        a(i) = a(i-1) + x
        c(i) = a(i)+ s
  10  continue
      write(6,*) a
      write(6,*) c
      write(6,*) ' i = ',i
      stop
      end
