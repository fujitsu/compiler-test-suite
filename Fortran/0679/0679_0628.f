      program main
      dimension a(10),b(10),c(10),d(10),e(10)
      data a/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      data b/11,12,13,14,15,16,17,18,19,20/
      data c/21,22,23,24,25,26,27,28,29,30/
      data d/31,32,33,34,35,36,37,38,39,40/
      data e/41,42,43,44,45,46,47,48,49,50/

      do 10 i=1,10
        n=10
        a(i)=a(n)
  10  continue
      write(6,*)  a

      n=5
      do 20 i=1,10
        if (i.le.5) n=10
        b(i)=b(n)
  20  continue
      write(6,*)  b

      do 30 i=1,8
        n=9
        if (i.le.5) a(i) = n
        c(i)=c(n)
  30  continue
      write(6,*)  'c',c
      write(6,*)  'c',c

      do 40 i=1,10
        n=0
        do 45 j=1,i
          n=j
  45    continue
        d(i)=d(n)
  40  continue
      write(6,*)  'd',d

      n=10
      do 50 i=1,7
      e(i) = e(n)
      n=8
  50  continue
      write(6,*)  'e',e
      stop
      end
