      program main
      dimension a(10,10),b(10,10),c(10,10)
      logical*4 lb(10)
      data b/100*1.0/,c/100*2.0/
      data lb/5*.true.,5*.false./,n/10/
      call sub1(a,b,c,lb)
      call sub2(n,a,b,c,lb)
      stop
      end
      subroutine sub1(a,b,c,lb)
      real a(10,10),b(10,10),c(10,10)
      logical*4 lb(10)
      do 10 i=1,10
        if ( lb(i) ) go to 11
          do 20 j=1,10
            a(j,i) = b(j,i) + c(j,i)
  20      continue
          go to 10
  11      do 30 j=1,10
            a(j,i) = b(j,i) * c(j,i)
  30      continue
  10  continue
      write(6,*) a
      return
      end
      subroutine sub2(n,a,b,c,lb)
      real a(n,n),b(n,n),c(n,n)
      logical*4 lb(n)
      do 10 i=1,n
        if ( lb(i) ) go to 11
          do 20 j=1,10
            a(j,i) = b(j,i) + c(j,i)
  20      continue
          go to 10
  11      do 30 j=1,10
            a(j,i) = b(j,i) * c(j,i)
  30      continue
  10  continue
      write(6,*) a
      return
      end
