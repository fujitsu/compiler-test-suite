      implicit integer*4(a-z)
      integer*4 a1(10),a2(10),b(10),l(10)
      data a1/10*0/,a2/10*0/,b/10*1/
      data const/1/,l/1,2,3,4,5,6,7,8,9,10/

      do 10 i=1,10
        a1(i) = b(5)
        a2(i) = -b(5)
  10  continue
      write(6,*) a1
      write(6,*) a2

      do 20 i=1,10
        a1(i) = b(i)
        a2(i) = -b(i)
  20  continue
      write(6,*) a1
      write(6,*) a2

      do 30 i=1,10
        a1(i) = b(l(i))
        a2(i) = -b(l(i))
  30  continue
      write(6,*) a1
      write(6,*) a2

      do 40 i=1,10
        a1(5) = const
        a2(5) = -const
  40  continue
      write(6,*) a1
      write(6,*) a2

      do 50 i=1,10
        a1(6) = i
        a2(6) = -i
  50  continue
      write(6,*) a1
      write(6,*) a2

      do 60 i=1,10
        a1(7) = b(l(i))
        a2(7) = -b(l(i))
  60  continue
      write(6,*) a1
      write(6,*) a2

      do 70 i=1,10
        a1(i) = const
        a2(i) = -const
  70  continue
      write(6,*) a1
      write(6,*) a2

      do 80 i=1,10
        a1(i) = i
        a2(i) = -i
  80  continue
      write(6,*) a1
      write(6,*) a2

      do 90 i=1,10
        a1(i) = b(i)
        a2(i) = -b(i)
  90  continue
      write(6,*) a1
      write(6,*) a2

      do 100 i=1,10
        a1(l(i)) = const
        a2(l(i)) = const
 100  continue
      write(6,*) a1
      write(6,*) a2

      do 110 i=1,10
        a1(l(i)) = i
        a2(l(i)) = -i
 110  continue
      write(6,*) a1
      write(6,*) a2

      do 120 i=1,10
        a1(l(i)) = b(i)
        a2(l(i)) = -b(i)
 120  continue
      write(6,*) a1
      write(6,*) a2
      stop
      end
