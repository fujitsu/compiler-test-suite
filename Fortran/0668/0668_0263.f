      program main
      real a(131),b(131),c(131),d(131),e(131),
     +     f(131),g(131),h(131),s(131),
     +     j(131),k(131),l(131),m(131),n(131),
     +     o(131),p(131),q(131)
      do 10 i=1,131
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
