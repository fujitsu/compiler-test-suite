      real*4     ra(10),rb(10),rc(10)    ,rv
      real*8     da(10),db(10),dc(10)    ,dv
      integer*4  ia(10),ib(10),ic(10)    ,iv
      complex*8  ca(10),cb(10),cc(10)    ,cv
      complex*16 cda(10),cdb(10),cdc(10) ,cdv
      data rb/10*1.0/,rc/10*2.0/
      data db/10*1.0/,dc/10*2.0/
      data ib/10*1/,ic/10*2/
      data cb/10*(1.0,1.0)/,cc/10*(2.0,2.0)/
      data cdb/10*(1.0,1.0)/,cdc/10*(2.0,2.0)/
      rv = 1.0
      iv = 1
      dv = 1.0
      cv = (1.0,1.0)
      cdv = (1.0,1.0)

      do 10 i=1,10
        ia(i) = - ib(i)
        ic(i) = - iv
        ra(i) = - rb(i)
        rc(i) = - rv
        da(i) = - db(i)
        dc(i) = - dv
        ca(i) = - cb(i)
        cc(i) = - cv
        cda(i) = - cdb(i)
        cdc(i) = - cdv
  10  continue
      write(6,*) ia
      write(6,*) ic
      write(6,*) ra
      write(6,*) rc
      write(6,*) da
      write(6,*) dc
      write(6,*) ca
      write(6,*) cc
      write(6,*) cda
      write(6,*) cdc
      stop
      end
