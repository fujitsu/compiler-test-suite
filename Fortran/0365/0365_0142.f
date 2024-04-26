      call sub(1)
      end
     
      subroutine sub(k)
      common /com/n
      integer ::a(1000),b(1000),c(1000)
      integer ::m=1,z=-1,v(10)

      b=2
      v(10)=0
      do i=k,n,m
        a(i)=b(i)+z
        k=a(i)
        c(i)=i
        v(10)=v(10)+b(i)
      end do

      do i=k,n,m
        if (a(i).ne.(b(i)+z))   stop 'ng'
      end do
      if (k.ne.a(n))            stop 'ng'

      if (v(10).ne.2000)        stop 'ng'
      print *,'ok'
      end

      block data bk
      common /com/n
      integer :: n=1000
      end
