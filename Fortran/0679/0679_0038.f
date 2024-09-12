      program main
      real a(10,10),b(10,10)/10*1.,20*2.,30*3.,40*4./,c(10)

      do 10 k=1,10
        c(k) = k
        do 10 i=1,10
        do 10 j=1,10
          a(i,j) = b(i,j)
  10  continue
      write(6,*) a
      write(6,*) c

      do 20 k=1,10
        c(k) = k
        do 20 i=1,9
        do 20 j=1,5
          a(i,j) = b(i,j)
  20  continue
      write(6,*) a
      write(6,*) c

      do 30 k=1,10
        c(k) = k
        do 30 i=1,9
        do 30 j=1,10
          a(k,j) = b(k,j)
  30  continue
      write(6,*) a
      write(6,*) c

      do 40 k=1,10
        c(k) = k
        do 40 i=1,10
        do 40 j=1,10
          a(k,i) = b(k,i)
  40  continue
      write(6,*) a
      write(6,*) c
      stop
      end
