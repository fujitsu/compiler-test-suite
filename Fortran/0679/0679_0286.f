      real*4     ra(10),rb(10),rc(10)    ,rv
      real*8     da(10),db(10),dc(10)    ,dv
      integer*4  ia(10),ib(10),ic(10)    ,iv
      complex*8  ca(10),cb(10),cc(10)    ,cv
      complex*16 cda(10),cdb(10),cdc(10) ,cdv
      logical*4  la(10),lb(10),lc(10)    ,lv
      data rb/10*1.0/,rc/10*2.0/
      data db/10*1.0/,dc/10*2.0/
      data ib/10*1/,ic/10*2/
      data cb/10*(1.0,1.0)/,cc/10*(2.0,2.0)/
      data cdb/10*(1.0,1.0)/,cdc/10*(2.0,2.0)/
      data lb/10*.true./,lc/10*.false./
      rv = 1.0
      iv = 1
      lv = .true.
      dv = 1.0
      cv = (1.0,1.0)
      cdv = (1.0,1.0)

      do 10 i=1,10
        la(i) = .not.lb(i)
        lc(i) = .not.lv
  10  continue
      write(6,*) la
      write(6,*) lc

      do 20 i=1,10
        da(i) =  rb(i)
  20  continue
      write(6,*) da

      do 30 i=1,10
        ra(i) =  anint(rb(i))
  30  continue
      write(6,*) ra

      do 40 i=1,10
        da(i) = dnint(db(i))
  40  continue
      write(6,*) da

      do 50 i=1,10
        ia(i) =  nint(rb(i))
  50  continue
      write(6,*) ia
      stop
      end
