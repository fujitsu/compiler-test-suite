      call sub( 2)
      call sub(-2)
      print *,'ok'
      end

      subroutine sub(M)
      integer a(1000),b(1000),M

      do i=2,999,M
        a(i)=i*M
      end do

      do i=999,2,M
        b(i)=i*M
      end do
        
      do i=2,999,M
        if (a(i).ne.i*M) stop 'ng'
      end do

      do i=999,2,M
        if (b(i).ne.i*M) stop 'ng'
      end do
        
      end
