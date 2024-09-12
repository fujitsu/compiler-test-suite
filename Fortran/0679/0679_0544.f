      program main
      real      a(10),b(10),c(10),d(10),e(10),f(10),g(10)
      logical   m(10)
      integer   l(10)/1,2,3,4,5,6,7,8,9,10/
      data b/10*5.0/,c/10*2.0/,d/10*3./,e/10*4./,f/10*5./,g/10*3.3/
      data m/8*.true.,2*.false./,n/10/
      do i=1,10
	a(i) = 0
      end do
      call sub1(n,a,b,c,d,e,f,g,m,l)
      stop
      end
      subroutine sub1(n,a,b,c,d,e,f,g,m,l)
      real      a(n),b(n),c(n),d(n),e(n),f(n),g(n)
      logical   m(n)
      data      k1/0/,k2/0/,k3/0/
      integer   l(n)
      real      ea(10),eb(10)
      equivalence (ea(3),eb(1))
      do i=1,10
	eb(i) = 0
      end do
      s = 0.0
      do 10 i=1,n
        a(i) = a(i+k1)
        b(i+k2) = b(i+k3)
        c(l(i)) = c(l(i))
        if(m(i)) c(i) = 1.0
        if(d(i)-1.0) 11,12,12
  11     e(i) = 1.0
  12     f(i) = 2.0
        s = s + g(i)
        s1 = g(i)*2.0
        ea(i) = eb(i)
  10  continue
      if( abs((s-33.0000000)/s) .gt. 0.1e-5 ) stop ' NG 1 '
      if( abs((s1-6.59999990)/s1 ) .gt. 0.1e-5 ) stop ' NG 2 '
      write(6,*)  32.9999962,6.59999990
      return
      end
