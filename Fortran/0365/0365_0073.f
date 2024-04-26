      call sub(1)
      print *,'ok'
      end

      subroutine sub(k)
      integer a(1000)
     
      do i=k,1000
       a(i)=1
      end do
      
      do i=k,1000
        if (a(i).ne.1) stop 'ng'
      end do
      end
