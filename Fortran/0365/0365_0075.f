      call sub(1,1000)
      print *,'ok'
      end

      subroutine sub(k,n)
      integer a(1000)
     
      k=1
      n=1000
      do i=k,n
       a(i)=1
      end do
      
      do i=k,n
        if (a(i).ne.1) stop 'ng'
      end do
      end
