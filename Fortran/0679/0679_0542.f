      program main
      dimension a(10),b(10),c(10)
      logical*4 la(10),lb(10),lc(10)
      data b/10*1.0/,c/10*2.0/
      data la/5*.true.,5*.false./
      data lb/5*.true.,5*.false./
      data lc/5*.true.,5*.false./,n/10/
      a=0
      call sub1(a,b,c,la,lb,lc)
      call sub2(n,a,b,c,la,lb,lc)
      stop
      end
      subroutine sub1(a,b,c,la,lb,lc)
      real a(10),b(10),c(10)
      logical*4 la(10),lb(10),lc(10)
      do 10 i=1,10
        if ( la(i) ) then
        else if (lb(i)) then
          a(i) = c(i)
        endif
        if ( la(i) ) then
          a(i) = i
        else if (lb(i)) then
          a(i) = b(i)
        else if (lc(i)) then
          a(i) = c(i)
        endif
  10  continue
      write(6,*) a
      return
      end
      subroutine sub2(n,a,b,c,la,lb,lc)
      real a(n),b(n),c(n)
      logical*4 la(n),lb(n),lc(n)
      do 10 i=1,n
        if ( la(i) ) then
        else if (lb(i)) then
          a(i) = c(i)
        endif
        if ( la(i) ) then
          a(i) = i
        else if (lb(i)) then
          a(i) = b(i)
        else if (lc(i)) then
          a(i) = c(i)
        endif
  10  continue
      write(6,*) a
      return
      end
