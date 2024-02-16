      integer a(10,10)
      real    iii
      iii = 1

      do 10 i=1,2
         do 20 j=1.0,2
            a(i,j) = i + j
 20      continue
 10   continue
      do 11 i=1,2
         do 21 j=1,2.0
            a(i,j) = i + j
 21      continue
 11   continue
      do 12 i=1,2
         do 22 j=1,2,1.0
            a(i,j) = i + j
 22      continue
 12   continue
      do 13 i=iii,2
         do 23 j=1,2
            a(i,j) = i + j
 23      continue
 13   continue

      do 100 i=1,2
         do 200 j=1.0,2
            write(6,*) a(i,j)
 200     continue
 100  continue
      do 110 i=1,2
         do 210 j=1,2.0
            write(6,*) a(i,j)
 210     continue
 110  continue
      do 120 i=1,2
         do 220 j=1,2,1.0
            write(6,*) a(i,j)
 220     continue
 120  continue
      do 130 i=iii,2
         do 230 j=1,2
            write(6,*) a(i,j)
 230     continue
 130  continue

      stop
      end
