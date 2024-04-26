      real*4  a(100),x(100)
      data  a,x/200*1./
      do 10 l=3,15,2
        lw = l
        do 4 j=50,80,5
          x(l-1) = x(l-1) + x(2*lw)*a(j)
  4       lw = lw + 1
        x(l-1) = a(l)*x(l-1)
 10   continue
      do 20 l=7,50,5
        lw = l + 1
        do 5 j=30,87,2
          x(l-1) = x(l-1) + x(lw)*a(j)
  5       lw = lw + 1
        x(l-1) = a(l)*x(l-1)
 20   continue
      write(6,*) ' x = ' ,x
      stop
      end
