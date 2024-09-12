      dimension a(10),b(10),c(10),l(10)
      data b/1,2,3,1,2,3,1,2,3,1/
      data c/1,2,1,2,1,2,1,2,1,2/
      data l/1,2,3,1,2,3,1,2,3,1/,j/3/

      do 10 i=1,10
        a(i) = b(i)**l(i)
  10  continue
      write(6,*)   a

      do 20 i=1,10
        a(i) = b(i)**j
  20  continue
      write(6,*)   a

      do 30 i=1,10
        a(i) = b(i)**l(5)
  30  continue
      write(6,*)   a

      do 40 i=1,10
        it = l(5)
        a(i) = b(i)**it
  40  continue
      write(6,*)   a

      do 50 i=1,10
        a(i) = c(i)**i
  50  continue
      write(6,*)   a
      stop
      end
