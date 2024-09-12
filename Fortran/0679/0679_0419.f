      program main
      integer*4 ia(10),ib(10),ic(10),is
      real*4    a(10),b(10),c(10)   ,s
      real*8    da(10),db(10),dc(10),ds
      data ia/10*1/,ib/10*2/,ic/10*3/
      data a/10*1.0/,b/10*2.0/,c/10*3.0/
      data da/10*1.0/,db/10*2.0/,dc/10*3.0/
      do 10 i=2,10
        s     = a(i)    + b(i)
        b(i)  = b(i-1)  + s
        c(i)  = b(i)    + s
        ds    = sqrt(da(i))  + db(i)
        db(i) = db(i-1) + ds
        dc(i) = db(i)   + ds
        is    = ia(i)   + ib(i)
        ib(i) = ib(i-1) + is
        ic(i) = ib(i)   + is
  10  continue
      write(6,*) b
      write(6,*) c
      write(6,*) db
      write(6,*) dc
      write(6,*) ib
      write(6,*) ic,' i = ',i
      stop
      end
