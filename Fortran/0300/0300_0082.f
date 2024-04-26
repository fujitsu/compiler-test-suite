      subroutine sub(a,b,n,m)
      real(8),dimension(1:m) :: a
      real(8),dimension(1:n) :: b
      do i=1,m
        a(i) = 1
      enddo
      do i=i,n
        b(i) = 2
      enddo
      end subroutine sub
      program main
      integer,parameter :: n=100,m=100
      real(8),dimension(1:m) :: a
      real(8),dimension(1:n) :: b
      a=0._8
      b=0._8
      call sub(a,b,n,m)
      if (int(sum(a+b)) == 100) then
       print *,"ok"
      else
       print *,"ng"
      endif
      end program
