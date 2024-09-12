      program main
      real*4    ra(10),rb(10),rc(10),rd(10)
      real*8    da(10),db(10),dc(10),ds
      data ra/10*0./,rb/10*1.23456/,rc/10*2.34567/,rd/10*3.45678/
      db = 0
      dc = 0
      da = 0

      do 10 i=2,10
        s = rb(i)*rc(i)
        da(i) = s
        db(i) = db(i-1) + da(i)
        s = rc(i)*rd(i)
        dc(i) = s
  10  continue
      write(6,*) da,db,dc,i

      do 20 i=2,10
        s = rb(i)*rc(i)
        if(s.eq.0) go to 21
        da(i) = s
        s = rc(i)*rd(i)
        dc(i) = s
  20  continue
  21  write(6,*) da,dc
      stop
      end
