      real*8    a(10,10),b(10)
      data n/10/
      do 1 i=1,10
        do 2 j=1,10
          a(i,j)=j+i
   2    continue
        b(i)=i
   1  continue

  10  continue
      ny=n-1
      do 80 j=1,ny
        ib = n-j
        do 80  l=1,j
          ia=n-l+1
          b(ib) = b(ib) - a(n-j,ia)*b(ia)
  80  continue
      write(6,*)  'a',a
      write(6,*)  'b',b
      stop
      end
