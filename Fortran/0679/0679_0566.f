      program main
      integer   ia(10),ib(10),ic(10)
      data      ia/10*0/,ib/10*1/,ic/1,2,3,4,5,6,7,8,9,10/
      real*4    ra(10),rb(10),rc(10),rd(10)
      real*8    da(10)
      logical*4 la(10),lb(10),lc(10)
      data ra/10*1./,rb/10*1.23456/,rc/10*2.34567/
      data da/10*0./
      data la/5*.true.,5*.false./
      do 10 i=1,10
        if(la(i)) then
         s = rb(i)*rc(i)
         da(i) = s
        endif
  10  continue
      write(6,*) da

      do 20 i=1,10
        if(la(i)) then
         ia(i) = ib(ic(i))
         s = rb(i)*rc(i)
         da(i) = s
        endif
  20  continue
      write(6,*) da,ia

      do 30 i=1,10
        if(la(i)) then
         ra(i) = sqrt(ra(i))
         s = rb(i)*rc(i)
         da(i) = s
        endif
  30  continue
      write(6,*) ra,da,ia
      stop
      end
