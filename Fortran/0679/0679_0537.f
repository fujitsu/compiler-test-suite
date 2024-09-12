      program main
      dimension a(10),b(10),c(10)
      logical*4 lb(10)
      data b/10*1.0/,c/10*2.0/
      data lb/5*.true.,5*.false./,n/10/
      a=0
      call sub1(a,b,c,lb)
      call sub2(n,a,b,c,lb)
      stop
      end
      subroutine sub1(a,b,c,lb)
      real a(10),b(10),c(10)
      logical*4 lb(10)
      do 10 i=2,10
        a(i) = b(i) + i
        c(i) = c(i-1) + b(i)
  10  continue
      do 20 i=2,10
        if(lb(i)) then
          a(i) = sqrt(b(i)) + i
          c(i) = c(i-1) + b(i)
        endif
  20  continue
      write(6,*) a
      return
      end
      subroutine sub2(n,a,b,c,lb)
      real a(n),b(n),c(n)
      logical*4 lb(n)
      do 10 i=2,n
        a(i) = b(i) + i
        c(i) = c(i-1) + b(i)
  10  continue
      do 20 i=2,n
        if(lb(i)) then
          a(i) = sqrt(b(i)) + i
          c(i) = c(i-1) + b(i)
        endif
  20  continue
      write(6,*) a
      return
      end
