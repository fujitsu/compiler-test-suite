      program main
      real*4    a(10),b(15),c(10)
      data  a/1,2,3,4,5,6,7,8,9,10/
      data  b/11,12,13,14,15,16,17,18,19,20,21,22,23,24,25/
      data  c/1,2,3,4,5,6,7,8,9,10/

      do 70 i=1,10
        n=10
        a(i) = a(n)
        n = 15
        b(i) = b(n)
  70  continue
      write(6,*) 'a',a
      write(6,*) 'b',b

      do 80 i=1,10
        c(i) = c(10)
  80  continue
      write(6,*) 'c',c
      stop
      end
