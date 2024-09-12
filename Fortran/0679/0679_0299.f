      program main
      integer    ia1(10),ia2(10),ia3(10),ia4(10)
      integer    ib(10),ic(10),id(10)
      logical    la(10)/.true.,.false.,.true.,.false.,.true.,
     1                  .false.,.true.,.false.,.true.,.false./
      data       imin/-2147483647/,imax/2147483647/
      data       imone/-1/,ipone/1/
      do 1 i=1,10
        ia1(i) = 0
        ia2(i) = 0
        ia3(i) = 0
        ia4(i) = 0
        ib(i) = i*i
        ic(i) = i
 1      id(i) = - i

      do 10 i=1,10
        ia1(i) = mod(imin ,imax )
        ia2(i) = imin / imone
        if(.not.la(i)) go to 10
        id(i) = imin / imax
        ia3(i) = mod( ipone , imax )
        ia4(i) = imax / imin
  10  continue
      write(6,*) ia1,ia2,ia3,ia4
      write(6,*) id

      do 20 i=1,10
        ia1(i) = i / imin
        ia2(i) = mod(i,imax)
        if(.not.la(i)) go to 20
        id(i) = i / imax
        ia3(i) = mod(i,imin)
  20  continue
      write(6,*) ia1,ia2,ia3
      write(6,*) id

      do 30 i=1,10
        ia1(i) = mod(ib(i),imax)
        ia2(i) = ib(i)/imin
        if(.not.la(i)) go to 30
        id(i) = mod(ib(i),imin)
        ia3(i) = ib(i)/imax
  30  continue
      write(6,*) ia1 ,ia2,ia3
      write(6,*) id

      do 40 i=1,10
        ia1(i) = imax/i
        ia2(i) = mod(imax,i)
        if(.not.la(i)) go to 40
        ia3(i) = mod(imin,i)
        id(i) = imin/i
  40  continue
      write(6,*) ia1,ia2,ia3
      write(6,*) id

      do 70 i=1,10
        ia1(i) = mod(imax,ic(i))
        ia2(i) = imin / ic(i)
        if(la(i)) go to 70
        ia3(i) = mod(imax,ib(i))
        id(i) = mod(ic(8),ib(i))
  70  continue
      write(6,*) ia1,ia2,ia3
      write(6,*) id
      stop
      end
