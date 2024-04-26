      call sub(1000,1)
      print *,'ok'
      end

      subroutine sub(n,m)
      integer a(1000)
     
      do i=1,n,m
       a(i)=1
      end do
      
      do i=1,n,m
        if (a(i).ne.1) stop 'ng'
      end do
      end
