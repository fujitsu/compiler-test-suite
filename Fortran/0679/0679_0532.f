      program main
      dimension a(10,10),b(10,10),c(10,10)
      logical*4 lb(10),lc(10),ld(10)
      data b/100*1.0/,c/100*2.0/
      data lb/5*.true.,5*.false./
      data lc/5*.true.,5*.false./
      data ld/5*.true.,5*.false./,n/10/
      a=0
      call sub1(a,b,c,lb,lc,ld)
      call sub2(n,a,b,c,lb,lc,ld)
      stop
      end
      subroutine sub1(a,b,c,lb,lc,ld)
      real a(10,10),b(10,10),c(10,10)
      logical*4 lb(10),lc(10),ld(10)
      do 10 i=1,10
        if ( lb(i) ) then
          do 20 j=1,10
            a(j,i) = b(j,i) + c(j,i)
  20      continue
        else if ( lc(i) ) then
          do 30 j=1,10
            a(j,i) = b(j,i) * c(j,i)
  30      continue
        else if ( lc(i) ) then
          do 40 j=1,10
            a(j,i) = b(j,i) / c(j,i)
  40      continue
        endif
  10  continue
      write(6,*) a
      return
      end
      subroutine sub2(n,a,b,c,lb,lc,ld)
      real a(n,n),b(n,n),c(n,n)
      logical*4 lb(n),lc(n),ld(n)
      do 10 i=1,n
        if ( lb(i) ) then
          do 20 j=1,10
            a(j,i) = b(j,i) + c(j,i)
  20      continue
        else if ( lc(i) ) then
          do 30 j=1,10
            a(j,i) = b(j,i) * c(j,i)
  30      continue
        else if ( lc(i) ) then
          do 40 j=1,10
            a(j,i) = b(j,i) / c(j,i)
  40      continue
        endif
  10  continue
      write(6,*) a
      return
      end
