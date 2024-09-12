      program main
      dimension a(10),b(10),c(10)
      logical*4 lb(10)
      data b/10*5.0/,c/10*2.0/
      data lb/5*.true.,5*.false./,n/10/
      call sub1(a,b,c,lb)
      call sub2(n,a,b,c,lb)
      stop
      end
      subroutine sub1(a,b,c,lb)
      real a(10),b(10),c(10)
      logical*4 lb(10)
      do 10 i=1,10
        if ( b(i) - i )  11,12,13
  11      a(i) = b(i) + c(i)
          go to 10
  12      a(i) = b(i) * c(i)
          go to 10
  13      a(i) = b(i) / c(i)
          go to 10
  10  continue
      write(6,*) a
      return
      end
      subroutine sub2(n,a,b,c,lb)
      real a(n),b(n),c(n)
      logical*4 lb(n)
      do 10 i=1,n
        if ( b(i) - i )  11,12,13
  11      a(i) = b(i) + c(i)
          go to 10
  12      a(i) = b(i) * c(i)
          go to 10
  13      a(i) = b(i) / c(i)
          go to 10
  10  continue
      write(6,*) a
      return
      end
