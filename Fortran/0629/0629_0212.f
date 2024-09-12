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
      stop
      end
