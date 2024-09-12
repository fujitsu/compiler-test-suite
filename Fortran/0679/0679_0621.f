      program main
      dimension a(10),b(10),c(10)
      integer*4 eq,z
      equivalence (eq,z)
      data a/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      data b/11,12,13,14,15,16,17,18,19,20/
      data c/21,22,23,24,25,26,27,28,29,30/

      do 10 i=1,10
        n=-15
        a(i)=a(n+i+10+5)
  10  continue
      write(6,*)  a

      do 20 i=1,10
        eq=10
        b(i)=b(eq)
  20  continue
      write(6,*)  b

      do 30 j=1,10
      do 30 i=1,10
        c(i)=c(j)
  30  continue
      write(6,*)  c
      stop
      end
