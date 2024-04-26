      program main
      common  /aa/ lw
      real*4  a(100),x(100)
      data  a,x/200*1./,n/2/
      lw = n
      do 10 l=3,15,2
        do 4 j=50,80,5
          x(n-1) = x(n-1) + x(2*lw)*a(j)
  4       lw = lw + 1
        x(l-1) = a(l)*x(l-1)
 10   continue
      do 20 i=2,3
       lw = i
       do 20 l=7,30,5
        do 5 j=55,87,2
          x(i-1) = x(i-1) + x(lw)*a(j)
  5       lw = lw + 1
        x(l-1) = a(l)*x(l-1)
 20   continue
      write(6,*) ' x = ' ,x
      stop
      end
