      program main
      dimension a(10),b(10),c(10)
      logical*4 lb(10),lc(10),ld(10)
      data b/10*1.0/,c/10*2.0/
      data lb/5*.true.,5*.false./,n/10/
      data lc/5*.true.,5*.false./
      data ld/5*.true.,5*.false./
      a=0
      call sub1(a,b,c,lb,lc,ld)
      call sub2(n,a,b,c,lb,lc,ld)
      stop
      end
      subroutine sub1(a,b,c,lb,lc,ld)
      real a(10),b(10),c(10)
      logical*4 lb(10),lc(10),ld(10)
      do 10 i=1,10
        if ( lb(i) ) then
          a(i) = b(i) + c(i)
        else if ( lc(i) ) then
          a(i) = b(i) * c(i)
        else if ( ld(i) ) then
          a(i) = b(i) / c(i)
        endif
  10  continue
      write(6,*) a
      return
      end
      subroutine sub2(n,a,b,c,lb,lc,ld)
      real a(n),b(n),c(n)
      logical*4 lb(n),lc(n),ld(n)
      do 10 i=1,n
        if ( lb(i) ) then
          a(i) = b(i) + c(i)
        else if ( lc(i) ) then
          a(i) = b(i) * c(i)
        else if ( ld(i) ) then
          a(i) = b(i) / c(i)
        endif
  10  continue
      write(6,*) a
      return
      end
