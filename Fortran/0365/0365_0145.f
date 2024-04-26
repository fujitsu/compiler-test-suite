      common/com/k,n,m
      integer ::a(-1:1000),b(2:1003),c(1000),d(0:999),e(999),f(0:998)

      do i=-1,n
        a(i)=i
      end do
      do i=2,n+3
        b(i)=i
      end do
      do i=1,n,m+1
        c(i)=i
      end do
      do i=k-1,n-1
        d(i)=i
      end do
      do i=1,n-1,1+m
        e(i)=i
      end do
      do i=1+k-2,n-2,1+m
        f(i)=i
      end do

      do i=-1,n
        if (a(i).ne.i)  stop 'ng'
      end do
      do i=2,n+3
        if (b(i).ne.i)  stop 'ng'
      end do
      do i=1,n,m+1
        if (c(i).ne.i)  stop 'ng'
      end do
      do i=k-1,n-1
        if (d(i).ne.i)  stop 'ng'
      end do
      do i=1,n-1,1+m
        if (e(i).ne.i)  stop 'ng'
      end do
      do i=1+k-2,n-2,1+m
        if (f(i).ne.i)  stop 'ng'
      end do
      print *,'ok'
      end

      block data bk
      common/com/k,n,m
      integer ::k=1,n=1000,m=0
      end
