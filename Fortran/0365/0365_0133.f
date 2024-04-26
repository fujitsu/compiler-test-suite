      integer :: a(1000),b=2

      do i=1,1000
        call sub(a,b,1000)
      end do
      do i=1,1000
          if (a(i).ne.(b*i))   stop 'ng'
      end do
      print *,'ok'
      end

      subroutine sub(a,b,n)
      integer a(1000),b
      do i=1,n
        a(i)=b*i
        call dummy()
      end do
      end
      subroutine dummy()
      end
