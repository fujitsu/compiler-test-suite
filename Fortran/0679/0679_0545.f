      program main
      real      a(10),b(10),c(10),d(10),e(10),f(10),g(10)
      logical   m(10)
      integer   l(10)/1,2,3,4,5,6,7,8,9,10/
      data b/10*5.0/,c/10*2.0/,d/10*3./,e/10*4./,f/10*5./,g/10*3.3/
      data m/8*.true.,2*.false./,n/10/
      call sub1(n,a,b,c,d,e,f,g,m,l)
      stop
      end
      subroutine sub1(n,a,b,c,d,e,f,g,m,l)
      real      a(n),b(n),c(n),d(n),e(n),f(n),g(n)
      logical   m(n)
      integer   l(n)
      do 10 i=1,n
        a(i) = b(i)
        if(m(i)) then
          c(i) = i
          do 20 j=1,n
            d(j) = d(j) + c(j)
 20       continue
          e(i) = sqrt(f(i))
        else
          c(i) = -i
          do 21 j=1,n
            d(j) = - d(j)
 21       continue
          e(i) = f(i)**3
        endif
        b(i) = d(i)
 10   continue
      write(6,*) b,e
      return
      end
