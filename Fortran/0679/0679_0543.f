      program main
      dimension a(10),b(10),c(10)
      logical*4 lb(10)
      data b/10*5.0/,c/10*2.0/
      data lb/5*.true.,5*.false./,n/10/,m/10/
      call sub1(n,a,b,c,lb)
      call sub2(n,m,a,b,c,lb)
      stop
      end
      subroutine sub1(n,a,b,c,lb)
      real a(n),b(n),c(n)
      logical*4 lb(n)
      do 10 i=1,n
          a(i) = b(i) + c(i)
  10  continue
      do 20 i=1,n
        if(lb(i)) then
          a(i) = b(i) + c(i)
        else
          a(i) = i
        endif
  20  continue
      write(6,*) a
      return
      end
      subroutine sub2(n,m,a,b,c,lb)
      real a(n),b(n),c(n)
      logical*4 lb(n)
      do 10 i=1,n
        a(i) = i
        do 20 j=1,m
          b(j) = j
  20    continue
        c(i) = a(i)
  10  continue
      do 30 i=1,n
        do 40 j=1,m
          if(lb(j)) then
            a(j) = b(j) + c(j)
          else
            a(j) = j
          endif
  40    continue
  30  continue
      write(6,*) a
      return
      end
