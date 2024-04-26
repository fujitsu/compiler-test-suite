      dimension  a(20,20),b(20)
      data  b/20*2.0/
      do 10 i=1,20
       do 10 j=1,20
         a(i,j) = 3.0
 10   continue
      n = 20
      ny = n - 1
      do 20 j=1,ny
        ib = n - j
        do 20 l=1,j
          ia = n-l+1
          b(ib) = b(ib) - a(n-j,ia) * b(ia)
 20   continue
      write(6,600) b
 600  format(1x,4(5f14.3/))
      stop
      end
