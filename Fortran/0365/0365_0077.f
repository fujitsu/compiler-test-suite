      call sub(1000)
      print *,'ok'
      end

      subroutine sub(n)
      integer a(1000)
     
      do i=1,n,1
       a(i)=1
      end do
      
      do i=1,n
        if (a(i).ne.1) stop 'ng'
      end do
      end
