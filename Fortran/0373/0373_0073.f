      integer*4 a(10,10),b(10,10),c(10,10),d(10,10),n(10,10)
      integer*4 e(10,10),g(10,10),h(10,10),k(10,10),m(10,10)
      data a/100*2/,b/100*3/,c/100*9/,d/100*8/,m/100*18/,n/100*6/
      data e/100*1/,g/100*9/,h/100*57/,k/100*7/

      do i=1,8
        do j=1,8
         a(i,j)=a(i,j)+b(i,j)+d(i,j)+e(i,j)+g(i,j)+h(i,j)+k(i,j)+m(i,j)
     *         +n(i,j)
         d(i,j)=d(i,j+1)
         b(i,j)=b(i,j+1)
         e(i,j)=e(i,j+1)
         g(i,j)=g(i,j+1)
         h(i,j)=h(i,j+1)
         k(i,j)=k(i,j+1)
         m(i,j)=m(i,j+1)
         n(i,j)=n(i,j+1)
         c(i,j)=a(i,j)*b(i,j)*d(i,j)*e(i,j)*g(i,j)*h(i,j)*k(i,j)*m(i,j)
     *         *n(i,j)
        enddo
      enddo
      write(6,*) c
      stop
      end
