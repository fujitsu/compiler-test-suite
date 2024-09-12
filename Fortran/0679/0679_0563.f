      program main
      integer   ia(10),ib(10),ic(10)
      real*4    ra(10),rb(10),rc(10)
      real*8    da(10),db(10),dc(10),dd(10),ds
      complex*8 ca(10),cb(10),cc(10),cs
      complex*16 cda(10),cdb(10),cdc(10),cdd(10),cds
      logical*4 la(10),lb(10),lc(10)
      data ra/10*0./,rb/10*1.23456/,rc/10*2.34567/
      data da/10*0./,db/10*1.23456/,dc/10*2.34567/
      data ca/10*(0,0)/,cb/10*(1.23456,3.23456)/
      data cc/10*(1.23456,3.23456)/
      data cda/10*(0,0)/,cdb/10*(1.23456,3.23456)/
      data cdc/10*(1.23456,3.23456)/
      data ia/10*1/,ib/10*2/,ic/10*3/
      data la/5*.true.,5*.false./
      do 10 i=1,10
        s = rb(i)*rc(i)
        da(i) = s
 10   continue
      write(6,*) da
      do 20 i=1,10
        ds = db(i)*dc(i)
        dd(i) = ds + 1.0
 20   continue
      write(6,*) dd
      do 30 i=1,10
        is = ia(i) * i
        ib(i) = is
 30   continue
      write(6,*) ib
      do 40 i=1,10
        cs = cb(i)*cc(i)
        cda(i) = cda(i) + cs
  40  continue
      write(6,*) cda
      do 50 i=1,10
        cds = cdb(i)*cdc(i)
        cdd(i) = cds
  50  continue
      write(6,*) cdd
      stop
      end
