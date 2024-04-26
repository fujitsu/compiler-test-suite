      subroutine target_loop(a,b,c,d)
        integer(4) :: i,d
        real(8) :: a((1000)), b((1000)), c((1000))
        do i = 1,(1000)
           if (mod(i,2) == 1) then
              a(i) = b(i) * c(i)
           endif
        end do
        d = i
      end subroutine target_loop
      
      subroutine stride_loop(a,b,c,d)
        integer(4) :: i,d
        real(8) :: a((1000)), b((1000)), c((1000))
        do i = 1, (1000), (2)
           a(i) = b(i) * c(i)
        end do
        d = i
      end subroutine stride_loop
      
      subroutine check(x,y,a,b)
        integer(4) :: i,a,b
        real(8) :: x((1000)), y((1000))
        
        do i = 1,(1000)
           if (.not.is_equal_r(x(i),y(i))) then
              print *, "NG:", i, x(i), y(i)
              exit
           endif
        enddo
        if(.not.is_equal(a,b)) then
           print *, "NG: ", a, b
        else
           print *, "OK"
        endif
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
        logical function is_equal(a,b)
          integer(4) :: a, b
          if (a .eq. b) then
             is_equal = .true.
          else
             is_equal = .false.
          end if
        end function is_equal

      end subroutine check

      program main
      implicit none

      integer(4) :: i,tl, sl
      real(8) :: ans((1000)), res((1000))
      real(8) :: x((1000)),y((1000))
      do i = 1,(1000)
         ans(i) = 0.0d0
         res(i) = 0.0d0
         x(i) = i
         y(i) = i
      enddo

      call target_loop(ans,x,y,tl)

      call stride_loop(res,x,y,sl)

      call check(ans,res,tl,sl)

    end program main
