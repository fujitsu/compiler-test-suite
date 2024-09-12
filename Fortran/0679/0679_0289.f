      dimension ia(10),ib(10),ic(10)
      dimension ia1(10),ia2(10),ia3(10)
      logical   la1(10),la2(10),la3(10),la4(10),la5(10),la6(10)
      logical   lb(10),lc(10)
      data ib/1,2,3,4,5,6,7,8,9,10/
      data ic/0,2,4,4,4,8,0,8,10,10/
      data lb/2*.true.,3*.false.,3*.true.,2*.false./
      data lc/3*.true.,2*.false.,4*.true.,1*.false./

      do 10 i=1,10
        ia1(i) = ib(i) + ic(i)
        ia2(i) = ib(i) - ic(i)
        ia3(i) = ib(i) * ic(i)
  10  continue
      write(6,*) ia1
      write(6,*) ia2
      write(6,*) ia3

      do 20 i=1,10
        la1(i) = lb(i) .and. lc(i)
        la2(i) = lb(i) .or. lc(i)
  20  continue
      write(6,*) la1
      write(6,*) la2

      do 30 i=1,10
        la1(i) = lb(i) .neqv. lc(i)
        la2(i) = lb(i) .eqv. lc(i)
  30  continue
      write(6,*) la1
      write(6,*) la2

      do 41 i=1,10
        ia(i) = ib(i)*8
  41  continue
      write(6,*) ia

      do 42 i=1,10
        la1(i) = ib(i) .lt. ic(i)
        la2(i) = ib(i) .le. ic(i)
        la3(i) = ib(i) .eq. ic(i)
        la4(i) = ib(i) .ne. ic(i)
        la5(i) = ib(i) .gt. ic(i)
        la6(i) = ib(i) .ge. ic(i)
  42  continue
      write(6,*) la1
      write(6,*) la2
      write(6,*) la3
      write(6,*) la4
      write(6,*) la5
      write(6,*) la6
      stop
      end
