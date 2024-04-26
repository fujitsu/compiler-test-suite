      call sub(1)
      end

      subroutine sub(n)
      integer a(1000),n
     
      do i=n+1,1000,n+1
       a(i)=1
      end do

      do i=n+1,1000,n+1
        if (a(i).ne.1)  stop 'ng'
      end do

      print *,'ok'
      end
