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

      write(6,*) '  (1) real*4 '
      do 10 i=1,10
        ra(i) = 1.0
        rb(i) = rv
        rc(i) = rb(i)
  10  continue
      write(6,*) ra
      write(6,*) rb
      write(6,*) rc
      write(6,*) '  (2) real*8 '
      do 20 i=1,10
        da(i) = 1.0
        db(i) = dv
        dc(i) = db(i)
  20  continue
      write(6,*) da
      write(6,*) db
      write(6,*) dc
      write(6,*) '  (3) integer*4'
      do 30 i=1,10
        ia(i) = 1.0
        ib(i) = iv
        ic(i) = ib(i)
  30  continue
      write(6,*) ia
      write(6,*) ib
      write(6,*) ic
      write(6,*) '  (4) logical*4'
      do 40 i=1,10
        la(i) = .true.
        lb(i) = lv
        lc(i) = lb(i)
  40  continue
      write(6,*) la
      write(6,*) lb
      write(6,*) lc
      write(6,*) '  (5) complex*8'
      do 50 i=1,10
        ca(i) = (1.0,1.0)
        cb(i) = cv
        cc(i) = cb(i)
  50  continue
      write(6,*) ca
      write(6,*) cb
      write(6,*) cc
      write(6,*) '  (6) complex*16'
      do 60 i=1,10
        cda(i) = (1.0,1.0)
        cdb(i) = cdv
        cdc(i) = cdb(i)
  60  continue
      write(6,*) cda
      write(6,*) cdb
      write(6,*) cdc
      stop
      end
