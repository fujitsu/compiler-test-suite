      common/com/k,n,m
      integer ::a(1000)

      do i=k,n-k-1,m
        a(i)=i
      end do

      do i=k,n-k-1,m
        if (a(i).ne.i)  stop 'ng'
      end do
      print *,'ok'
      end

      block data bk
      common/com/k,n,m
      integer ::k=1,n=1000,m=1
      end
