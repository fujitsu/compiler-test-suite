      program main
      dimension a(10),c(10),d(10),e(10),f(10)
      data a/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      data c/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      data e/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      d=0

      n=10
      do 30 i=1,n
        a(i)=a(n)
  30  continue
      write(6,*)  'a',a

      do 40 i=1,10
        n=10
        if (n.le.5)   d(i)=c(n)
        c(i)=c(n)
  40  continue
      write(6,*)  'c',c
      write(6,*)  'd',d

      do 50 i=1,10
        n=10
        f(i)=e(n)
        e(i)=e(n)
  50  continue
      write(6,*)  'e',e
      write(6,*)  'f',f
      stop
      end
