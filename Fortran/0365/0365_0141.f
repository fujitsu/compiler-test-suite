      call sub(1)
      end
     
      subroutine sub(k)
      common /com/n
      integer ::a(1000),b(1000)=2,c(1000)
      integer ::m=1,x,y,z=3,v(10)

      v(10)=0
      do i=k,n,m
        a(i)=b(i)+z
        x=a(i)
        y=a(i)
        c(i)=i
      end do

      do i=k,n,m
        if (a(i).ne.(b(i)+z))   stop 'ng'
      end do
      if (x.ne.a(n))            stop 'ng'
      print *,'ok'
      end

      block data bk
      common /com/n
      integer :: n=1000
      end
