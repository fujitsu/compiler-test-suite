      program main
      real a(10),b(10)
      data n/10/
      data a/1,2,3,4,5,6,7,8,9,10/
      data b/1,2,2,4,4,6,2,8,2,10/
      logical la(10),lb(10),lc(10),ls,lans(10),lcon
      data la/2*.true.,2*.false.,2*.true.,2*.false.,2*.true./
      data lb/10*.false./,lc/10*.false./,lans/10*.false./,lcon/.false./

      do 10 i=1,n
        ls = a(i).ne.b(i)
        lans(i) = ls
  10  continue
      write(6,*) ls,lans

      do 11 i=1,n
        ls = lcon
        lans(i) = ls
  11  continue
      write(6,*) ls,lans

      do 20 i=1,10
        if(la(i)) then
          ls = a(i).eq.b(i)
        endif
  20  continue
      write(6,*) ls

      do 21 i=1,10
        if(lb(i)) then
          ls = a(i).ne.b(i)
        endif
  21  continue
      write(6,*) ls

      do 23 i=1,10
        if(la(i)) then
          ls = .true.
        endif
  23  continue
      write(6,*) ls

      do 24 i=1,10
        if(lb(i)) then
         ls = .false.
        endif
  24  continue
      write(6,*) ls

      do 30 i=1,n
        lc(1) = a(i).eq.b(i)
  30  continue
      write(6,*) lc(1)

      do 31 i=1,n
        lc(2) = .true.
  31  continue
      write(6,*) lc(2)

      do 32 i=1,n
        if(la(i)) lc(1) = a(i).eq.b(i)
  32  continue
      write(6,*) lc(1)

      do 33 i=1,10
        if(lb(i)) lc(3) = a(i).ne.b(i)
  33  continue
      write(6,*) lc(3)

      do 34 i=1,n
        if(la(i)) lc(3) = .true.
  34  continue
      write(6,*) lc(3)

      do 35 i=1,10
        if(lb(i)) lc(5) = .true.
  35  continue
      write(6,*) lc(5)
      stop
      end
