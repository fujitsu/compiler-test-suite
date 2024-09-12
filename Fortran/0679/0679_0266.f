      real*4     ra(10),rb(10),rc(10)
      logical*4  la(10),lb(10),lc(10)
      integer*4  ia(10),ib(10),ic(10)
      complex*8  ca(10),cb(10),cc(10)
      data rb/10*1.0/,rc/10*2.0/
      data lb/10*.true./,lc/10*.false./
      data ib/10*1/,ic/10*2/
      data cb/10*(1.0,1.0)/,cc/10*(2.0,2.0)/
      n = 10
      do 10 i=1,n
        ra(i) = rb(i)
        ia(i) = ib(i)
  10  continue
      write(6,*) ' ***** no 1 *****'
      write(6,*) ra
      write(6,*) ia
      do 30 i=1,n
        la(i) = .not.lb(i)
  30  continue
      write(6,*) ' ***** no 3 *****'
      write(6,*) la
      do 40 i=1,n
        la(i) = lb(i).and.lc(i)
  40  continue
      write(6,*) ' ***** no 4 *****'
      write(6,*) la
      do 50 i=1,n
        ia(i) = ib(i) * ic(i)
  50  continue
      write(6,*) ' ***** no 5 *****'
      write(6,*) ia
      do 60 i=1,n
        ia(i) = ib(i) *8
  60  continue
      write(6,*) ' ***** no 6 *****'
      write(6,*) ra
      do 70 i=1,n
        ra(i) = rb(i) / 2.0
  70  continue
      write(6,*) ' ***** no 7 *****'
      write(6,*) ra
      do 80 i=1,n
        la(i) = ib(i) .lt. ic(i)
  80  continue
      write(6,*) ' ***** no 8 *****'
      write(6,*) la
      do 90 i=1,n
  91    ra(i) = rb(i) / rc(i)
  92    ia(i) = ib(i) * ic(i)
  94    ca(i) = cb(i) + cc(i)
  90  continue
      write(6,*) ' ***** no 9 *****'
      write(6,*) ra
      write(6,*) ia
      write(6,*) la
      write(6,*) ca
      stop
      end
