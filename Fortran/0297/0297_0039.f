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
      where(b > 0)
        a = b + c
      elsewhere
        a = b - c
      endwhere
       end subroutine
