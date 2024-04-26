      integer c(1000),t(1)
      call sub(c,t)
      end

      subroutine sub(c,t)
      common /com/a,r
      pointer (p,d),(q,u)
      integer a(1000),r(1)
      integer b(1000),s(1)
      integer c(1000),t(1)
      integer d(1000),u(1)
      integer x(1000),y(1)
      p=loc(x)
      q=loc(y)


      r(1)=0
      s(1)=0
      t(1)=0
      d(1)=0
      u(1)=0
      do i=1,1000
        a(i)=1
        r(1)=r(1)+a(i)
        b(i)=2
        s(1)=s(1)+b(i)
        c(i)=3
        t(1)=t(1)+c(i)
        d(i)=4
        u(1)=u(1)+d(i)
      end do

      if (r(1).ne.1000)    stop 'ng'
      if (b(1).ne.2   )    stop 'ng'
      if (t(1).ne.3000)    stop 'ng'
      if (u(1).ne.4000)    stop 'ng'
      print *,'ok'
      end
