      real*8 a(3000),b(3000),c(3000)
      do i=1,3000
       a(i)=i
       b(i) = 0
      enddo
      n=3000
      call sub(a,b,n)
      end
      subroutine sub(a,b,n)
      real*8 a(n),b(n)
      m=n-1
      do i=1,m
       b(i)=a(i)+a(i+1)
      enddo
      print *,i,b(1),b(1000),b(2000),b(3000)
      end
