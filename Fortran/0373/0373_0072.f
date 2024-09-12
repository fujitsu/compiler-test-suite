      integer*4 a(10),b(10),c(10),d(10),n(10)
      integer*4 e(10),g(10),h(10),k(10),m(10)
      data a/10*2/,b/10*3/,c/10*9/,d/10*8/,m/10*18/,n/10*6/
      data e/10*1/,g/10*9/,h/10*57/,k/10*7/

      do i=1,8
         a(i)=a(i)+b(i)+d(i)+e(i)+g(i)+h(i)+k(i)+m(i)
     *         +n(i)
         d(i)=d(i+1)
         b(i)=b(i+1)
         e(i)=e(i+1)
         g(i)=g(i+1)
         h(i)=h(i+1)
         k(i)=k(i+1)
         m(i)=m(i+1)
         n(i)=n(i+1)
         c(i)=a(i)*b(i)*d(i)*e(i)*g(i)*h(i)*k(i)*m(i)
     *         *n(i) 
      enddo
      write(6,*) c
      stop
      end
