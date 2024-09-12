      program main
      dimension a(10),b(10),c(10),d(10)
      data a/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      data b/11,12,13,14,15,16,17,18,19,20/
      data c/21,22,23,24,25,26,27,28,29,30/
      data d/31,32,33,34,35,36,37,38,39,40/
      data k/10/

      do 10 i=1,10
        a(i)=a(k)
  10  continue
      write(6,*) a

      n=5
      do 20 i=1,10
        b(i)=b(n)
  20  continue
      write(6,*) b

      j=0
      n=10
      do 30 while (j.gt.10)
        j=j+1
        do 30 i=1,10
        c(i)=c(n)
  30  continue
      write(6,*) c

      n=9
      do 40 j=1,10
        if (j.gt.5) n=10
        do 40 i=1,10
        d(i)=d(n)
  40  continue
      write(6,*) d
      stop
      end
