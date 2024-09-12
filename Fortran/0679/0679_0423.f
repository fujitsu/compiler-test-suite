      program main
      dimension a(10),b(10),c(10),d(10,10)
      data a/10*1.0/,b/10*2.0/,c/10*1.0/,d/100*0.0/
      do 20 i=2,10
        s = sqrt(a(i)) + b(i)
        do 10 j=2,10
          x = a(j) + b(j)
          d(i,j) = d(i,j-1) + x
  10    continue
        c(i) = c(i-1) + s
  20  continue
      write(6,*) c
      write(6,*) d
      stop
      end
