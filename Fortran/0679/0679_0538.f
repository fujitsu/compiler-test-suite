      program main
      dimension a(10),b(10),c(10)
      logical*1 lb(10)
      data b/10*1.0/,c/10*2.0/
      data lb/5*.true.,5*.false./,n/10/
      a=0
      call sub1(a,b,c,lb)
      call sub2(n,a,b,c,lb)
      stop
      end
      subroutine sub1(a,b,c,lb)
      real a(10),b(10),c(10)
      logical*1 lb(10)
      real aa(10)
      data aa/ 0.00000000,2.84147096,3.84147096,
     c         4.84147072,5.84147072,6.84147072,
     c         7.84147072,8.84147072,9.84147072,
     c         10.8414707 /
      do 10 i=2,10
        if(lb(i)) a(i) = sqrt(b(i)) + c(i)
        if(lb(3)) a(i) = sin(b(i)) + c(i)
  10  continue
      do 20 i=2,10
        if(lb(i)) then
          a(i) = sqrt(b(i)) + i
          c(i) = c(i-1) + b(i)
        endif
        if(lb(2)) then
          a(i) = sin(b(i)) + i
          c(i) = c(i-1) + b(i)
        endif
  20  continue
      print *,abs(a-aa) .le. 0.1e-5
      return
      end
      subroutine sub2(n,a,b,c,lb)
      real a(n),b(n),c(n)
      logical*1 lb(n)
      real aa(10)
      data aa/ 0.00000000,2.84147096,3.84147096,
     c	       4.84147072,5.84147072,6.84147072,
     c	       7.84147072,8.84147072,9.84147072,
     c	       10.8414707/
      do 10 i=2,n
        if(lb(i)) a(i) = sqrt(b(i)) + c(i)
        if(lb(3)) a(i) = sin(b(i)) + c(i)
  10  continue
      do 20 i=2,n
        if(lb(i)) then
          a(i) = sqrt(b(i)) + i
          c(i) = c(i-1) + b(i)
        endif
        if(lb(2)) then
          a(i) = sin(b(i)) + i
          c(i) = c(i-1) + b(i)
        endif
  20  continue
      print *,abs(a-aa) .le. 0.1e-5
      return
      end
