      dimension a(20),b(20),c(20)
      data a/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *       11,12,13,14,15,16,17,18,19,20/
      data b/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *       11,12,13,14,15,16,17,18,19,20/
      data c/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *       11,12,13,14,15,16,17,18,19,20/
      data  k/9/
      data  l/9/

      do 10 j=1,8
      n=k+j
      do 10 i=1,8
        k=9
        a(i)=a(n)
  10  continue
      write(6,*)  a

      do 20 j=1,8
      n=l+j
      l=10
      do 20 i=1,8
        b(i)=b(n)
  20  continue
      write(6,*)  b

      do 30 j=1,10
      m=9
      n=m+j
      do 30 i=1,10
        c(i)=c(n)
  30  continue
      write(6,*)  c
      stop
      end
