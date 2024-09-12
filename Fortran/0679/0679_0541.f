      program main
      dimension a(10),b(10),c(10)
      logical*4 lb(10)
      data b/10*1.0/,c/10*2.0/
      data lb/5*.true.,5*.false./,n/10/
      call sub1(a,b,c,lb)
      call sub2(n,a,b,c,lb)
      stop
      end
      subroutine sub1(a,b,c,lb)
      real a(10),b(10),c(10)
      logical*4 lb(10)
      do 10 i=1,10
        if ( lb(i) ) a(i) = b(i) + c(i)
        if ( lb(i) ) go to 11
          a(i) = b(i) * c(i)
 11     continue
        if ( lb(i) ) go to 12
          a(i) = b(i) + c(i)
          go to 10
  12    continue
          a(i) = b(i) * c(i)
  10  continue
      write(6,*) a
      return
      end
      subroutine sub2(n,a,b,c,lb)
      real a(n),b(n),c(n)
      logical*4 lb(n)
      do 10 i=1,n
        if ( lb(i) ) a(i) = b(i) + c(i)
        if ( lb(i) ) go to 11
          a(i) = b(i) * c(i)
 11     continue
        if ( lb(i) ) go to 12
          a(i) = b(i) + c(i)
          go to 10
  12    continue
          a(i) = b(i) * c(i)
  10  continue
      write(6,*) a
      return
      end
