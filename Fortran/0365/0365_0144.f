      integer ::a(1000),b(1000)
      integer ::k=1,n=1000,m=1
      common /com/kk

      do i=kk,n,m
        a(i)=i
      end do
      do i=k,n,m
        b(i)=i
      end do

      call sub(a,b)
      print *,'ok'
      end

      subroutine sub(a,b)
      integer ::a(1000),b(1000)
      do i=1,1000
        if (a(i).ne.i)  stop 'ng'
        if (b(i).ne.i)  stop 'ng'
      end do

      end

      subroutine dummy()
      end

      block data bk
      common /com/kk
      integer ::kk=1
      end
