      integer*4 a(10,10),b(10,10),c(10,10),d(10,10),n(10,10)
      integer*4 e(10,10),g(10,10),h(10,10),k(10,10),m(10,10)
      integer*4 o(10,10),p(10,10),q(10,10),r(10,10),s(10,10)
      integer*4 t(10,10),u(10,10),v(10,10),w(10,10),x(10,10)
      data a/100*2/,b/100*3/,c/100*0/,d/100*8/,m/100*18/,n/100*6/
      data e/100*1/,g/100*9/,h/100*5/,k/100*7/
      data o/100*8/,p/100*9/,q/100*6/
      data r/100*2/,s/100*3/,t/100*8/,u/100*18/,v/100*6/
      data w/100*2/,x/100*3/

      do i=1,8
        do j=1,8
         a(i,j)=a(i,j)+b(i,j)+d(i,j)+e(i,j)+g(i,j)+h(i,j)+k(i,j)+m(i,j)
     *         +n(i,j)+o(i,j)+p(i,j)+q(i,j)+r(i,j)+s(i,j)+t(i,j)
     *         +u(i,j)+v(i,j)+w(i,j)+x(i,j)
         d(i,j)=d(i,j+1)
         b(i,j)=b(i,j+1)
         e(i,j)=e(i,j+1)
         g(i,j)=g(i,j+1)
         h(i,j)=h(i,j+1)
         k(i,j)=k(i,j+1)
         m(i,j)=m(i,j+1)
         n(i,j)=n(i,j+1)
         o(i,j)=o(i,j+1)
         p(i,j)=p(i,j+1)
         q(i,j)=q(i,j+1)
         r(i,j)=r(i,j+1)
         s(i,j)=s(i,j+1)
         t(i,j)=t(i,j+1)
         u(i,j)=u(i,j+1)
         v(i,j)=v(i,j+1)
         w(i,j)=w(i,j+1)
         x(i,j)=x(i,j+1)
         c(i,j)=a(i,j)*b(i,j)*d(i,j)*e(i,j)*g(i,j)*h(i,j)*k(i,j)*m(i,j)
     *         *n(i,j)*o(i,j)*p(i,j)*q(i,j)*r(i,j)*s(i,j)*t(i,j)
     *         *u(i,j)*v(i,j)*w(i,j)*x(i,j)
        enddo
      enddo
      write(6,*) c
      stop
      end
