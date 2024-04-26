      call sub(2,999)
      call sub(999,2)
      print *,'ok'
      end

      subroutine sub(K,N)
      integer a(1000),b(1000)

      do i=K,N,2
        a(i)=i*2
      end do

      do i=K,N,-2
        b(i)=i*(-2)
      end do
        
      do i=K,N,2
        if (a(i).ne.i*2) stop 'ng'
      end do

      do i=K,N,-2
        if (b(i).ne.i*(-2)) stop 'ng'
      end do
        
      end
