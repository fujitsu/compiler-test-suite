      integer*4 a(10),b(10),c(10),d(10),n(10)
      integer*4 e(10),g(10),h(10),k(10),m(10)
      integer*4 o(10),p(10),q(10),r(10),s(10)
      integer*4 t(10),u(10),v(10),w(10),x(10)
      data a/10*2/,b/10*3/,c/10*0/,d/10*8/,m/10*18/,n/10*6/
      data e/10*1/,g/10*9/,h/10*5/,k/10*7/
      data o/10*8/,p/10*9/,q/10*6/
      data r/10*2/,s/10*3/,t/10*8/,u/10*18/,v/10*6/
      data w/10*2/,x/10*3/

      do i=1,8
         a(i)=a(i)+b(i)+d(i)+e(i)+g(i)+h(i)+k(i)+m(i)
     *         +n(i)+o(i)+p(i)+q(i)+r(i)+s(i)+t(i)
     *         +u(i)+v(i)+w(i)+x(i)
         d(i)=d(i+1)
         b(i)=b(i+1)
         e(i)=e(i+1)
         g(i)=g(i+1)
         h(i)=h(i+1)
         k(i)=k(i+1)
         m(i)=m(i+1)
         n(i)=n(i+1)
         o(i)=o(i+1)
         p(i)=p(i+1)
         q(i)=q(i+1)
         r(i)=r(i+1)
         s(i)=s(i+1)
         t(i)=t(i+1)
         u(i)=u(i+1)
         v(i)=v(i+1)
         w(i)=w(i+1)
         x(i)=x(i+1)
         c(i)=a(i)*b(i)*d(i)*e(i)*g(i)*h(i)*k(i)*m(i)
     *         *n(i)*o(i)*p(i)*q(i)*r(i)*s(i)*t(i)
     *         *u(i)*v(i)*w(i)*x(i)
      enddo
      write(6,*) c
      stop
      end
