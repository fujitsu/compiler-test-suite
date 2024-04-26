      real*4  a(1000),x(1000)
      data  a,x/2000*1./
      do 175 l=7,107,50
        lw = l
        do 4 j=30,870,5
          x(l-1) = x(l-1) + x(lw)*a(j)
  4       lw = lw + 1
        x(l-1) = a(l)*x(l-1)
 175  continue
      write(6,*) ' x = ',(x(k),k=6,106)
      stop
      end
