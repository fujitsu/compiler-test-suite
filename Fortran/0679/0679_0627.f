      program main
      dimension a(10),b(10),c(10)
      data a/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      data b/11,12,13,14,15,16,17,18,19,20/
      data c/21,22,23,24,25,26,27,28,29,30/

      do 10 i=1,10
        n=6
        a(i)=a(n+i-1-5)
  10  continue
      write(6,*)  a

      do 20 j=1,10
      n=5-j
      do 20 i=1,n+j+5
        b(i)=b(i)
  20  continue
      write(6,*)  b

      do 30 i=1,10
        n=5-i
        c(i)=c(i+n+5)
  30  continue
      write(6,*)  c
      stop
      end
