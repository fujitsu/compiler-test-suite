      program main
      real a(130),b(130),c(130),d(130),e(130),
     +     f(130),g(130),h(130),s(130),
     +     j(130),k(130),l(130),m(130),n(130),
     +     o(130),p(130),q(130)
      do 10 i=1,130
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
        q(i) = a(i)+b(i)-c(i)-d(i)-e(i)+f(i)-g(i)+h(i)-s(i)-j(i)-k(i)
     +        -l(i)+m(i)+n(i)+o(i)-p(i)
   10 continue
      write(6,*) q
      stop
      end
