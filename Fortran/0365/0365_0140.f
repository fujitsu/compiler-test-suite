      call sub(991,1000,1)
      end
     
      subroutine sub(k,n,m)
      integer ::a(1000)

      do i=1,10
        a(i)=i
      end do
      do i=2,990
        a(i)=i
      end do
      do i=k,n,m
        a(i)=i
      end do

      do i=1,1000
       if (a(i).ne.i)   stop 'ng'
      end do
      print *,'ok'
      end
