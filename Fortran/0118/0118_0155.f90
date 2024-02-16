      parameter(n=50)
      real(8),dimension(1:n) :: a,b,x      
      do i=1,n
        a(i) = i
        b(i) = i
        x(i) = 1
        x(i) = mod(i,2)         
      enddo
      call sub(a,b,x)
      res = 0
      do i=1,n
        res = res + a(i)
      enddo
      write(6,9) res
9     format(f10.5)
      stop
      end
      subroutine sub(a,b,x)
      real(8),dimension(1:50) :: a,b,x
      real(8) s
      s = 0
      do i=1,50
        if (x(i) .gt. 0.0) then
           s = b(i)+1
        else
           s = b(i)+2
        endif
        a(i) = s      
      enddo
      end subroutine
