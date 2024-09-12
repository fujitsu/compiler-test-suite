      program main
      real z(10000)
      integer d,b,c,n,l,m
      d = 0
      b = 100
      c = 20
        d = d + b
        d = (d+2) * c
        n = d
      call  sub1(z,n)
      b = d + 10
      l = 450 + c*2
      call  sub2(l)
      m = 3000
      call  sub3(m)
      call  sub4
      call  sub5
      call  sub6
      call  sub7
      call  sub8
      call  sub9
      stop
      end
      subroutine sub1(z,n)
      real z(n)
      do 101 i=1,n
        z(i) = 1.0
  101 continue
      write(6,*) z
      return
      end
      subroutine sub2(l)
      real*4  e(512)
      data e/512*0/
      do 102 i=1,l
         e(i) = 4.0
  102 continue
      write(6,*) e
      return
      end
      subroutine sub3(m)
      real   a(5000)
      data a/5000*5/
      do 103 i=1,m
        a(i) = 2.0
  103 continue
      write(6,*) a
      return
      end
      subroutine sub4
      real*4  a(512),b(512)
      data b/512*2.0/
      do 104 i=1,512
      a(i)=b(i)
  104 continue
      write(6,*) a
      return
      end
      subroutine sub5
      real a(4096),b(4096)
      data b/4096*3.0/
      do 105 i=1,4096
        a(i) = b(i)
  105 continue
      write(6,*) a
      return
      end
      subroutine sub6
      real   a(576)
      do 106 i=1,576
        a(i) = 1.1
  106 continue
      write(6,*) a
      return
      end
      subroutine sub7
      real a(100),b(100),c(100),d(100),e(100),
     +     f(100),g(100),h(100),s(100),
     +     j(100),k(100),l(100),m(100),n(100),
     +     o(100),p(100),q(100),r(100),t(100),
     +     u1(100),u2(100),u3(100),u4(100),
     +     u5(100),u6(100),u7(100),u8(100),
     +     u9(100),u10(100),u11(100),u12(100),
     +     u13(100),u14(100),u15(100),u16(100)
       do 107 i=1,100
        a(i) = 1.0
        b(i) = 2.0
        c(i) = 3.0
        d(i) = 4.0
        e(i) = 5.0
        f(i) = 6.0
        g(i) = 7.0
        h(i) = 8.0
        s(i) = 9.0
        j(i) = 10.0
        k(i) = 11.0
        l(i) = 12.0
        m(i) = 13.0
        n(i) = 14.0
        o(i) = 15.0
        p(i) = 16.0
        q(i) = 17.0
        t(i) = 18.0
        u1(i) = 19.0
        u2(i) = 20.0
        u3(i) = 21.0
        u4(i) = 22.0
        u5(i) = 23.0
        u6(i) = 24.0
        u7(i) = 25.0
        u8(i) = 26.0
        u9(i) = 27.0
        u10(i) = 28.0
        u11(i) = 29.0
        u12(i) = 30.0
        u13(i) = 31.0
        u14(i) = 32.0
        u15(i) = 33.0
        u16(i) = 34.0
       r(i) = a(i)+b(i)-c(i)-d(i)-e(i)+f(i)
     +        -g(i)+h(i)-s(i)-j(i)-k(i)
     +        -l(i)+m(i)+n(i)+o(i)-p(i)+q(i)
     +        -t(i)-u1(i)+u2(i)-u3(i)
     +        +u4(i)+u5(i)-u6(i)+u7(i)+u8(i)
     +        -u9(i)+u10(i)-u11(i)+u12(i)
     +        +u13(i)-u14(i)+u15(i)+u16(i)
  107 continue
      write(6,*) r
      return
      end
      subroutine sub8
      real a(130),b(130),c(130),d(130),e(130),
     +     f(130),g(130),h(130),s(130),
     +     j(130),k(130),l(130),m(130),n(130),
     +     o(130),p(130),q(130)
       do 108 i=1,130
        a(i) = 1.0
        b(i) = 2.0
        c(i) = 3.0
        d(i) = 4.0
        e(i) = 5.0
        f(i) = 6.0
        g(i) = 7.0
        h(i) = 8.0
        s(i) = 9.0
        j(i) = 10.0
        k(i) = 11.0
        l(i) = 12.0
        m(i) = 13.0
        n(i) = 14.0
        o(i) = 15.0
        p(i) = 16.0
        q(i) = a(i)+b(i)-c(i)-d(i)-e(i)+f(i)
     +            -g(i)+h(i)-s(i)-j(i)-k(i)-l(i)
     +            +m(i)+n(i)+o(i)-p(i)
  108 continue
      write(6,*) q
      return
      end
      subroutine sub9
      real a(131),b(131),c(131),d(131),e(131),
     +     f(131),g(131),h(131),s(131),
     +     j(131),k(131),l(131),m(131),n(131),
     +     o(131),p(131),q(131)
       do 109 i=1,131
        a(i) = 1.0
        b(i) = 2.0
        c(i) = 3.0
        d(i) = 4.0
        e(i) = 5.0
        f(i) = 6.0
        g(i) = 7.0
        h(i) = 8.0
        s(i) = 9.0
        j(i) = 10.0
        k(i) = 11.0
        l(i) = 12.0
        m(i) = 13.0
        n(i) = 14.0
        o(i) = 15.0
        p(i) = 16.0
        q(i) = a(i)+b(i)-c(i)-d(i)-e(i)+f(i)
     +            -g(i)+h(i)-s(i)-j(i)-k(i)-l(i)
     +            +m(i)+n(i)+o(i)-p(i)
 109  continue
      write(6,*) q
      return
      end
