      dimension ia(10),ib(10),ic(10)
      dimension ia1(10),ia2(10),ia3(10)
      logical   la1(10),la2(10),la3(10),la4(10),la5(10),la6(10)
      logical   lb(10),lc(10)
      data ib/1,2,3,4,5,6,7,8,9,10/
      data ic/0,2,4,4,4,8,0,8,10,10/
      data lb/2*.true.,3*.false.,3*.true.,2*.false./
      data lc/3*.true.,2*.false.,4*.true.,1*.false./
      data iv1/3/,iv2/5/,iv3/7/,iv4/9/

      do 10 i=1,10
        ia1(i) = ib(i) + iv1
  10  continue
      write(6,*) ia1

      do 20 i=1,10
        ia1(i) = ib(i)*8
        ia2(i) = max(ib(i),iv2)
  20  continue
      write(6,*) ia1
      write(6,*) ia2

      do 42 i=1,10
        la1(i) = ib(i) .lt. iv1
        la2(i) = ib(i) .le. iv2
        la5(i) = ib(i) .gt. iv3
        la6(i) = ib(i) .ge. iv4
  42  continue
      write(6,*) la1
      write(6,*) la2
      write(6,*) la5
      write(6,*) la6
      stop
      end
