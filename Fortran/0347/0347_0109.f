      program main
      common  /aa/ lw
      real*4  a(100),x(100)
      data  a,x/200*1./
      do 10 l=5,15,5
        lw = l-1
        do 4 j=60,80,5
          x(l-2) = x(l-2) + x(2*lw)*a(j)
  4       lw = lw + 1
        x(l-1) = a(l)*x(l-1)
 10   continue
      do 20 i=2,3
       lw = i + 1
       do 20 l=7,30,5
        do 5 j=55,87,2
          x(i) = x(i) + x(lw)*a(j)
  5       lw = lw + 1
        x(l-1) = a(l)*x(l-1)
 20   continue
      write(6,*) ' x = ' ,x
      stop
      end
