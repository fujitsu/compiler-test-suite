      real*8 stime,etime
      integer a(512),b(512),c(512),d(512),e(512),f(512),
     &        g(512),h(512)
      real p(512),q(512),r(512),s/11/
      integer x(512)/512*1/
      data a/512*0/
      data b/512*1/
      data c/512*2/
      data d/512*3/
      data e/512*4/
      data f/512*5/
      data g/512*3/
      data h/512*2/
      data p/512*3/
      data q/512*4/
      data r/512*5/

      do i=1,512,2
        b(i) = 1
        c(i) = 1
        d(i) = 2
        e(i) = 2
        f(i) = 3
      enddo
      m = 0  

      do i=1,128
        m = m+1
        if(x(i).eq.1) then
          p(i) = sqrt(s)
          q(i) = p(i) + m
          is = 2
          ix = r(i) + is
          r(i) = is ** 2 + ix - (p(i) + q(i))
          a(i) = a(i) * is + m
          b(i) = b(i) * is + m
          c(i) = c(i) * is + m
          d(i) = d(i) * is + m
          e(i) = e(i) * is + m
          f(i) = f(i) * is + m
          a(i) = (a(i) + f(i)) / 2
          b(i) = (b(i) + a(i)) / 2
          c(i) = (c(i) + b(i)) / 2
          d(i) = (d(i) + c(i)) / 2
          e(i) = (e(i) + d(i)) / 2
          f(i) = (f(i) + e(i)) / 2
          a(i) = f(i) + a(i) + b(i) + c(i) + d(i) + e(i)
          b(i) = a(i) + b(i) + c(i) + d(i) + e(i) + f(i)
          c(i) = b(i) + c(i) + d(i) + e(i) + f(i) + a(i)
          d(i) = c(i) + d(i) + e(i) + f(i) + a(i) + b(i)
          e(i) = d(i) + e(i) + f(i) + a(i) + b(i) + c(i)
          f(i) = e(i) + f(i) + a(i) + b(i) + c(i) + d(i)
          a(i) = f(i) + a(i) + b(i) + c(i) + d(i) + e(i)
          b(i) = a(i) + b(i) + c(i) + d(i) + e(i) + f(i)
          c(i) = b(i) + c(i) + d(i) + e(i) + f(i) + a(i)
          d(i) = c(i) + d(i) + e(i) + f(i) + a(i) + b(i)
          e(i) = d(i) + e(i) + f(i) + a(i) + b(i) + c(i)
          f(i) = e(i) + f(i) + a(i) + b(i) + c(i) + d(i)
          a(i) = b(i) * g(i) / h(i) - r(i)
          b(i) = c(i) * g(i) / h(i) - r(i)
          c(i) = d(i) * g(i) / h(i) - r(i)
          d(i) = e(i) * g(i) / h(i) - r(i)
          e(i) = f(i) * g(i) / h(i) - r(i)
          f(i) = a(i) * g(i) / h(i) - r(i)
          p(i) = sqrt(real(f(i)))
          q(i) = sqrt(p(i)) + sin(real(is)) + cos(real(is))
        endif
      enddo

      do i=1,512
        a(i) = 0
        b(i) = 1
        c(i) = 2
        d(i) = 3
        e(i) = 4
        f(i) = 5
        p(i) = 3
        q(i) = 4
        r(i) = 5
      enddo 
      do i=1,512,2
        b(i) = 1
        c(i) = 1
        d(i) = 2
        e(i) = 2
        f(i) = 3
      enddo
      m = 0  

      do i=1,256
        m = m+1
        if(x(i).eq.1) then
          p(i) = sqrt(s)
          q(i) = p(i) + m
          is = 2
          ix = r(i) + is
          r(i) = is ** 2 + ix - (p(i) + q(i))
          a(i) = a(i) * is + m
          b(i) = b(i) * is + m
          c(i) = c(i) * is + m
          d(i) = d(i) * is + m
          e(i) = e(i) * is + m
          f(i) = f(i) * is + m
          a(i) = (a(i) + f(i)) / 2
          b(i) = (b(i) + a(i)) / 2
          c(i) = (c(i) + b(i)) / 2
          d(i) = (d(i) + c(i)) / 2
          e(i) = (e(i) + d(i)) / 2
          f(i) = (f(i) + e(i)) / 2
          a(i) = f(i) + a(i) + b(i) + c(i) + d(i) + e(i)
          b(i) = a(i) + b(i) + c(i) + d(i) + e(i) + f(i)
          c(i) = b(i) + c(i) + d(i) + e(i) + f(i) + a(i)
          d(i) = c(i) + d(i) + e(i) + f(i) + a(i) + b(i)
          e(i) = d(i) + e(i) + f(i) + a(i) + b(i) + c(i)
          f(i) = e(i) + f(i) + a(i) + b(i) + c(i) + d(i)
          a(i) = f(i) + a(i) + b(i) + c(i) + d(i) + e(i)
          b(i) = a(i) + b(i) + c(i) + d(i) + e(i) + f(i)
          c(i) = b(i) + c(i) + d(i) + e(i) + f(i) + a(i)
          d(i) = c(i) + d(i) + e(i) + f(i) + a(i) + b(i)
          e(i) = d(i) + e(i) + f(i) + a(i) + b(i) + c(i)
          f(i) = e(i) + f(i) + a(i) + b(i) + c(i) + d(i)
          a(i) = b(i) * g(i) / h(i) - r(i)
          b(i) = c(i) * g(i) / h(i) - r(i)
          c(i) = d(i) * g(i) / h(i) - r(i)
          d(i) = e(i) * g(i) / h(i) - r(i)
          e(i) = f(i) * g(i) / h(i) - r(i)
          f(i) = a(i) * g(i) / h(i) - r(i)
          p(i) = sqrt(real(f(i)))
          q(i) = sqrt(p(i)) + sin(real(is)) + cos(real(is))
        endif
      enddo

      do i=1,512
        a(i) = 0
        b(i) = 1
        c(i) = 2
        d(i) = 3
        e(i) = 4
        f(i) = 5
        p(i) = 3
        q(i) = 4
        r(i) = 5
      enddo 
      do i=1,512,2
        b(i) = 1
        c(i) = 1
        d(i) = 2
        e(i) = 2
        f(i) = 3
      enddo
      m = 0  

      do i=1,512
        m = m+1
        if(x(i).eq.1) then
          p(i) = sqrt(s)
          q(i) = p(i) + m
          is = 2
          ix = r(i) + is
          r(i) = is ** 2 + ix - (p(i) + q(i))
          a(i) = a(i) * is + m
          b(i) = b(i) * is + m
          c(i) = c(i) * is + m
          d(i) = d(i) * is + m
          e(i) = e(i) * is + m
          f(i) = f(i) * is + m
          a(i) = (a(i) + f(i)) / 2
          b(i) = (b(i) + a(i)) / 2
          c(i) = (c(i) + b(i)) / 2
          d(i) = (d(i) + c(i)) / 2
          e(i) = (e(i) + d(i)) / 2
          f(i) = (f(i) + e(i)) / 2
          a(i) = f(i) + a(i) + b(i) + c(i) + d(i) + e(i)
          b(i) = a(i) + b(i) + c(i) + d(i) + e(i) + f(i)
          c(i) = b(i) + c(i) + d(i) + e(i) + f(i) + a(i)
          d(i) = c(i) + d(i) + e(i) + f(i) + a(i) + b(i)
          e(i) = d(i) + e(i) + f(i) + a(i) + b(i) + c(i)
          f(i) = e(i) + f(i) + a(i) + b(i) + c(i) + d(i)
          a(i) = f(i) + a(i) + b(i) + c(i) + d(i) + e(i)
          b(i) = a(i) + b(i) + c(i) + d(i) + e(i) + f(i)
          c(i) = b(i) + c(i) + d(i) + e(i) + f(i) + a(i)
          d(i) = c(i) + d(i) + e(i) + f(i) + a(i) + b(i)
          e(i) = d(i) + e(i) + f(i) + a(i) + b(i) + c(i)
          f(i) = e(i) + f(i) + a(i) + b(i) + c(i) + d(i)
          a(i) = b(i) * g(i) / h(i) - r(i)
          b(i) = c(i) * g(i) / h(i) - r(i)
          c(i) = d(i) * g(i) / h(i) - r(i)
          d(i) = e(i) * g(i) / h(i) - r(i)
          e(i) = f(i) * g(i) / h(i) - r(i)
          f(i) = a(i) * g(i) / h(i) - r(i)
          p(i) = sqrt(real(f(i)))
          q(i) = sqrt(p(i)) + sin(real(is)) + cos(real(is))
        endif
      enddo

      print *,a(1),a(100),a(128),a(256),a(512)
      print *,b(1),b(100),b(128),b(256),b(512)
      print *,c(1),c(100),c(128),c(256),c(512)
      print *,d(1),d(100),d(128),d(256),d(512)
      print *,e(1),e(100),e(128),e(256),e(512)
      print *,f(1),f(100),f(128),f(256),f(512)
      print *,p(1),p(100),p(128),p(256),p(512)
      print *,q(1),q(100),q(128),q(256),q(512)
      print *,r(1),r(100),r(128),r(256),r(512)
      print *,ix
      end
