      subroutine target_loop(a,b,c)
      integer(8) :: i
      real(8),dimension((1000)) :: a,b,c
      do i = 1,(1000)
         if (mod(i,2) == 0) then
         endif
            a(i) = b(i) * c(i)
      end do
      end subroutine target_loop

      subroutine stride_loop(a,b,c)
      integer(8) :: i
      real(8),dimension((1000)) :: a,b,c
      do i = 1, (1000)
            a(i) = b(i) * c(i)
      end do
      end subroutine stride_loop

      subroutine check(x,y)
        integer(8) :: i
        real(8),dimension((1000)) :: x,y
        do i = 1,(1000)
           if (.not.is_equal_r(x(i),y(i))) then
              print *, "NG:", i, x(i), y(i)
              exit
           endif
        enddo
        print *, "OK"

      contains
        logical function is_equal_r(a,b)
          real(8) ::a,b
          if (a.eq.b) then
             is_equal_r = .true.
          else if ( a.eq.0 ) then
             is_equal_r = ( b .lt. (1.0E-13))
          else if ( b.eq.0 ) then
             is_equal_r = ( a .lt. (1.0E-13))
          else
             is_equal_r = ( abs(a-b)/abs(a) .lt. (1.0E-13))
          end if
        end function is_equal_r

      end subroutine check

      program main
      implicit none
      integer(8) :: i
      real(8),dimension((1000)) :: x,y
      real(8),dimension((1000)) :: ans,src
      do i = 1,(1000)
           ans(i) = 0.0d0
           src(i) = 0.0d0
         x(i) = i
         y(i) = i
      enddo

      call target_loop(ans,x,y)

      call stride_loop(src,x,y)

      call check(ans,src)

    end program main
