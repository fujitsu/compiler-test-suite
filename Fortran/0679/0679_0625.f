      program main
      dimension a(10)
      dimension b(10)
      dimension c(10)
      data a/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      data b/11,12,13,14,15,16,17,18,19,20/
      data c/21,22,23,24,25,26,27,28,29,30/

      do 40 i=1,10
        n=3
        m=7
        a(i)=a(n+m)
  40  continue
      write(6,*)  a

      do 50 i=1,8
        n=5
        b(i)=b(n+n)
  50  continue
      write(6,*)  b

      do 60 i=1,10
        n=5
        m=3
        l=2
        c(i)=c(n+m+l)
  60  continue
      write(6,*)  c
      stop
      end
