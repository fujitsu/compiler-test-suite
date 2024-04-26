      parameter(n=10)
      real * 8 a(n),b(n)
      do i=1,n
       a(i) =i
       b(i) =i+1
      enddo
      call sub(a,b,n)
      print *," end "
      print *,a(10)
      stop
      end
      subroutine sub(a,b,n)
      real * 8 a(n),b(n),w
      w = b(1)
      do i=1,n
        if (w.eq.0) then
          a(i) = a(i)+b(i)
        else
          a(i) = a(i)-b(i)
        endif
      enddo
      return
      end
