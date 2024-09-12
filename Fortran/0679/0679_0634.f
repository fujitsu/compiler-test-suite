      program main
      dimension a(20),b(20),c(20),d(20)
      data a/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *       11,12,13,14,15,16,17,18,19,20/
      data b/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *       11,12,13,14,15,16,17,18,19,20/
      data c/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *       11,12,13,14,15,16,17,18,19,20/
      data d/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *       11,12,13,14,15,16,17,18,19,20/

      k=6
      do 10 i=1,10
        n=k+i
        k=3
        a(i)=a(n)
  10  continue
      write(6,*)  a

      k=6
      do 20 i=1,10
        n=k+i
        if (i.gt.5) k=4
        b(i)=b(n)
  20  continue
      write(6,*)  b

      k=6
      do 30 i=1,10
        n=k+i
        k=4
        if (i.gt.5) z=k
        c(i)=c(n)
  30  continue
      write(6,*)  c

      k=6
      do 40 i=1,10
        n=k+i
        if (i.gt.5) z=k
        k=4
        d(i)=d(n)
  40  continue
      write(6,*)  d
      stop
      end
