      program main
      real a(10),b(10),c(10),d(10),s1
      logical la(10),lb(10),lc(10),ls1,lm(10),ls2,lm1(10),lm2(10)
      data a/1,2,3,4,5,6,7,8,9,10/
      data b/0,2,4,5,5,4,7,8,2,11/
      data c/0,2,4,4,5,6,7,8,9,10/
      data lm/.true.,.false.,.true.,.false.,.true.,
     1           .false.,.true.,.false.,.true.,.false./
      data lm1/5*.true.,5*.false./
      data lm2/2*.false.,2*.true.,2*.false.,2*.true.,2*.true./
      d=0

      do 10 i=1,10
        s1 = a(i) + b(i)
        d(1) = s1 + a(i)
        s2 = a(i) * b(i)
        d(2) = d(2) + b(i)
        ls1 = a(i) .eq. b(i)
        lc(4) = ls1.or.lm(i)
        ls2 = a(i) .ne. b(i)
  10  continue
      write(6,*) s1,s2,d(1),d(2),ls1,ls2,lc(4)

      do 20 i=1,10
        if(lm(i)) go to 20
          s1 = a(i) + b(i)
          d(1) = s1 + a(i)
          s2 = a(i) * b(i)
          d(2) = d(2) + b(i)
          ls1 = a(i) .eq. b(i)
          lc(4) = ls1.or.lm(i)
          ls2 = a(i) .ne. b(i)
  20  continue
      write(6,*) s1,s2,d(1),d(2),ls1,ls2,lc(4)

      do 30 i=1,10
        if(lm(i)) then
          if(lm1(i)) then
            s1 = a(i)
          else
            s1 = i
          endif
        else
          if(lm2(i)) then
            s1 = -i
          else
            s1 = b(i)
          endif
        endif
 30   continue
      write(6,*) s1
      stop
      end
