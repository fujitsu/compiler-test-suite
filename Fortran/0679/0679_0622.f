      program main
      dimension a(10),b(10),c(10),d(10)
      data a/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      data b/10*99/
      data c/11,12,13,14,15,16,17,18,19,20/
      data d/10*99/

      do 10 i=1,8
        n=10
        b(i)=a(n)
        n=9
        a(i)=a(n)
  10  continue
      write(6,*)  'a',a
      write(6,*)  'b',b

      do 20 i=1,7
        n=10
        d(i)=c(n)
        n=9
        n=8
        c(i)=c(n)
  20  continue
      write(6,*)  'c',c
      write(6,*)  'd',d
      stop
      end
