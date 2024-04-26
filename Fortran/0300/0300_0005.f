      program main
      dimension a(1000)
      dimension b(1000)
      dimension c(1000)

      do 10 i1=1,1000
        a(i1) = 1.
10    continue
      do 11 i2=1,1000
        b(i2) = 2.
11    continue
      do 12 i3=1,1000
        c(i3) = 3.
12    continue

      i=1
      j=2
      k=3

      call sub1

      print *,i2,i,j,k

      end

      subroutine sub1
      end
