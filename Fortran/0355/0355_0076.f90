      subroutine target_loop(a,b,c)
      integer(4) :: i
      real(8) :: a(1:(2)), b(1:(2)), c(1:(2))
      do i = 1,(2)
         if (mod(i,2) == 1) then
            a(i) = b(i) * c(i)
         endif
      end do
      end subroutine target_loop

      subroutine stride_loop(a,b,c)
      integer(4) :: i
      real(8) :: a(1:(2)), b(1:(2)), c(1:(2))
      do i = 1, (2), (2)
            a(i) = b(i) * c(i)
      end do
      end subroutine stride_loop

      subroutine check(x,y)
        integer(4) :: i
        real(8) :: x(1:(2)), y(1:(2))

        do i = 1,(2)
           if (.not.is_equal_r(x(i),y(i))) then
              print *, "NG:", i, x(i), y(i)
              exit
           endif
        enddo
        print *, "OK"

      contains
        logical function is_equal_r(a,b)
          real(8) :: a, b
          if (a .eq. b) then
             is_equal_r = .true.
          else if ( a .eq. 0 ) then
             is_equal_r = ( b .lt. (1.0E-13))
          else if ( b .eq. 0 ) then
             is_equal_r = ( a .lt. (1.0E-13))
          else
             is_equal_r = ( abs(a-b)/abs(a) .lt. (1.0E-13))
          end if
        end function is_equal_r

      end subroutine check

      program main
      implicit none

      integer(4) :: i
      real(8) :: ans(1:(2)), res(1:(2))
      real(8) :: x(1:(2)),y(1:(2))
      do i = 1,(2)
         ans(i) = 0.0d0
         res(i) = 0.0d0
         x(i) = i
         y(i) = i
      enddo

      call target_loop(ans,x,y)

      call stride_loop(res,x,y)

      call check(ans,res)

    end program main
