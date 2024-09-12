      program main
      real ra(10),rb(10)
      data ra/10*1.23456/,rb/10*0./,s/0/
      do 10 i=1,10
        s = s + ra(1)
  10  continue
      write(6,*) s,i
      do 20 i=1,10
        rb(1) = rb(1) + ra(3)
  20  continue
      write(6,*) rb(1),i
      stop
      end
