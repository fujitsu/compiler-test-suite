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
      imin = 0
      s1 = 0.
      s2 = 0.
      do 10 i=1,10
        s1 = s1 + a(i)
        if(s2.gt.b(i)) then
          s2 = b(i)
          imin = i
        endif
  10  continue
      write(6,*) s1,s2,imin
      k = 0
      do 20 i=2,10
        if(lb(i)) then
          k = k + 1
          a(k) = c(i)
        endif
  20  continue
      write(6,*) a,k
      return
      end
      subroutine sub2(n,a,b,c,lb)
      real a(n),b(n),c(n)
      logical*4 lb(n)
      imin=0
      s1 = 0.
      s2 = 0.
      do 10 i=1,n
        s1 = s1 + a(i)
        if(s2.gt.b(i)) then
          s2 = b(i)
          imin = i
        endif
  10  continue
      write(6,*) s1,s2,imin
      k = 0
      do 20 i=2,n
        if(lb(i)) then
          k = k + 1
          a(k) = c(i)
        endif
  20  continue
      write(6,*) a,k
      return
      end
