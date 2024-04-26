      call sub(1000)
      print *,'ok'
      end

      subroutine sub(n)
      integer a(1000)
     
      do i=2,n,2
       a(i)=1
      end do
      
      do i=2,n,2
        if (a(i).ne.1) stop 'ng'
      end do
      end
