      program main
      real a(10),b(10),c(10),d(10),s1
      logical la(10),lb(10),lc(10),ls1,lm(10)
      data a/1,2,3,4,5,6,7,8,9,10/
      data b/0,2,4,5,5,4,7,8,2,11/
      data c/0,2,4,4,5,6,7,8,9,10/
      data lm/.true.,.false.,.true.,.false.,.true.,
     1           .false.,.true.,.false.,.true.,.false./

      do 10 i=1,10
        if(lm(i)) s1 = a(i) + b(i)
  10  continue
      write(6,*) s1

      do 20 i=1,10
        if(lm(i)) ls1 = a(i).ne.b(i)
 20   continue
      write(6,*) ls1

      do 30 i=1,10
        if(lm(i)) then
          s1 = a(i) + b(i)
          c(i) = s1
          s1 = a(i) + c(i)
          d(i) = s1*b(i)
        endif
  30  continue
      write(6,*) s1

      ls1 = .false.
      do 40 i=1,10
        if(lm(i)) then
          ls1 = a(i).ne.b(i)
          la(i) = ls1
          ls1 = a(i).gt.b(i)
          lb(i) = ls1 .or. la(i)
        endif
 40   continue
      write(6,*) ls1

      do 50 i=1,10
        if(lm(i)) then
          if( lm(i) ) then
            s1 = a(i) + c(i)
          endif
        endif
50    continue
      write(6,*) s1

      ls1 = .false.
      do 60 i=1,10
        if(lm(i)) then
          if( lm(i) ) then
            ls1 = a(i) .ne. c(i)
          endif
        endif
60    continue
      write(6,*) ls1
      stop
      end
