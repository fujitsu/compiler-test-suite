      real*4     ra(10),rb(10)
      data rb/10*1.0/

      do 10 i=1,10
        ra(i) = 1.0
  10  continue
      write(6,*) ra

      do 20 i=1,10
        ra(i) = i
  20  continue
      write(6,*) ra

      do 30 i=1,10
        ra(i) = rb(i)
  30  continue
      write(6,*) ra
      stop
      end
