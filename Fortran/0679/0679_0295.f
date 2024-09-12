      program main
      real*4     ra(10),rb(10),rc(10),rd(10)
      integer    ia(10),ib(10),ic(10),id(10)
      do 1 i=1,10
        ia(i) = 0
        ib(i) = i*i
        ic(i) = i
        id(i) = - i
        ra(i) = 0.
        rb(i) = i*i
        rc(i) = sqrt(2*rb(i))
 1      rd(i) = -i*i

      do 10 i=1,10
        ia(i) = ib(3) / ic(7)
        ra(i) = rb(3) / rc(7)
        rd(i) = amod( rb(3),rc(7))
  10  continue
      write(6,*) ia
      write(6,*) ra
      write(6,*) rd

      do 20 i=1,10
        ia(i) = i*i / ic(5)
  20  continue
      write(6,*) ia

      do 30 i=1,10
        ia(i) = ib(i) / ic(7)
        ra(i) = rb(i) / rc(2)
        rd(i) = amod( rb(i),rc(7))
  30  continue
      write(6,*) ia
      write(6,*) ra
      write(6,*) rd

      do 40 i=1,10
        ia(i) = ib(2) / i
  40  continue
      write(6,*) ia

      k = 2
      do 50 i=1,10
        ia(i) = k / i
        k = k + 2
  50  continue
      write(6,*) ia

      do 60 i=1,10
        ia(i) = ib(i) / i
  60  continue
      write(6,*) ia

      do 70 i=1,10
        ia(i) = ib(8) / ic(i)
        ra(i) = rb(8) / rc(i)
        rd(i) = amod( rb(1),rc(i))
  70  continue
      write(6,*) ra,rd
      write(6,*) ia

      k = 2
      do 80 i=1,10
        ia(i) = k / ic(i)
        k = k + 5
  80  continue
      write(6,*) ia

      do 90 i=1,10
        ia(i) = ib(i) / ic(i)
        ra(i) = rb(i) / rc(i)
        rd(i) = amod( rb(i),rc(i))
  90  continue
      write(6,*) ia
      write(6,*) ra,rd
      stop
      end
