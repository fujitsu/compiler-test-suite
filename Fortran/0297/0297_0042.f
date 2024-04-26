      parameter(n=20)
      real(4),dimension(1:n) :: a,b,c
      a=1
      b=0
      c=3
      do i=1,n
        if (mod(i,2) == 0) then
           b(i) = i
        endif
      enddo
      call sub(a,b,c,n)
      print *,a
      stop
      end
      subroutine sub(a,b,c,n)
      real(4),dimension(1:n) :: a,b,c
      do i=1,n
        if (i.gt.5) then
          a(i) = a(i)+b(i)+c(i)
        endif
      enddo
      end subroutine
