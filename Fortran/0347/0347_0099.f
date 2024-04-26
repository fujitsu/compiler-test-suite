      program main
      common  /blk/  a(10),b(10),c(10)
      dimension     a1(10),b1(10),l(10)
      equivalence   (a(1),a1(1))
      equivalence   (b(1),b1(1))
      do 10 i=1,10
        l(i) = i
        b(i) = 1.
        c(i) = 2.
 10   continue
      do 20 i=1,10
        a(i) = b(l(i)) + c(l(i))
        b(l(i)) = c(l(i)) * a(i)
 20   continue

      do 30 i=1,10
        c(i) = b1(l(i)) + a1(l(i))
        b(l(i)) = c(l(i)) * a(i)
        a(l(i)) = b1(l(i)) * a(i)
 30   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
