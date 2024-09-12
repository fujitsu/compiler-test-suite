      integer*4  ia(10),ib(10),ic(10)
      real*4     ra(10),rb(10),rc(10)
      real*8     da(10),db(10),dc(10)
      complex*8  ca(10),cb(10),cc(10)
      complex*16 cda(10),cdb(10),cdc(10)
      data ib/10*1/,ic/10*2/
      data rb/10*1.0/,rc/10*2.0/
      data db/10*1.0/,dc/10*2.0/
      data cb/10*(1.0,1.0)/,cc/10*(2.0,2.0)/
      data cdb/10*(1.0,1.0)/,cdc/10*(2.0,2.0)/

      do 10 i=1,10
        ia(i) = ib(i) + 2
        ra(i) = rb(i) + 3.0
        da(i) = db(i) + 5.0
        ra(i) = rb(i) * 6.0
        da(i) = db(i) * 7.0
        ca(i) = cb(i) * (8.0,3.0)
        cda(i) = cdb(i) * (9.0,10.0)
  10  continue
      write(6,*) ia
      write(6,*) ra
      write(6,*) da
      write(6,*) ca
      write(6,*) cda

      n = 6
      do 20 i=1,10
        ia(i) = ib(i) + ic(3)
        ra(i) = rb(i) + rc(5)
        da(i) = db(i) + dc(n)
        ra(i) = rb(i) * rc(7)
        da(i) = db(i) * dc(n)
        ca(i) = cb(i) * cc(3)
        cda(i) = cdb(i) * cdc(n)
  20  continue
      write(6,*) ia
      write(6,*) ra
      write(6,*) da
      write(6,*) ca
      write(6,*) cda
      stop
      end
