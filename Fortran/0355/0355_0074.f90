      subroutine target_loop(a,b,c,d,e,f)
      integer(4) :: i
      real(8) :: a((1000)), b((1000)), c((1000)), d((1000)), e((1000)), f((1000))
      do i = 1,(1000)
         if (mod(i,2) == 0) then
            a(i) = b(i)*c(i)*(d(i)+e(i)) + d(i)*e(i) + f(i) * (c(i)/d(i))*e(i)*2.0d0
         endif
      end do
      end subroutine target_loop

      subroutine stride_loop(a,b,c,d,e,f)
      integer(4) :: i
      real(8) :: a((1000)), b((1000)), c((1000)), d((1000)), e((1000)), f((1000))
      do i = 2, (1000), (2)
            a(i) = b(i)*c(i)*(d(i)+e(i)) + d(i)*e(i) + f(i) * (c(i)/d(i))*e(i)*2.0d0
      end do
      end subroutine stride_loop

      subroutine check(x,y)
        integer(4) :: i
        real(8) :: x((1000)), y((1000))

        do i = 1,(1000)
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
      real(8) :: ans((1000)), res((1000))
      real(8) :: x((1000)),y((1000)), dx((1000)),dy((1000)), dt((1000))
      do i = 1,(1000)
         ans(i) = 0.0d0
         res(i) = 0.0d0
         x(i) = i
         y(i) = i
         dx(i) = 150*(1000)
         dy(i) = 123*(1000)
         dt(i) = 5.00d2
      enddo

      call target_loop(ans,x,y,dx,dy,dt)

      call stride_loop(res,x,y,dx,dy,dt)

      call check(ans,res)

    end program main
