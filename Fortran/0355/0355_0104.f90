      subroutine target_loop(a,b,c,z)
        integer(4) :: i,z
        real(8),dimension(0:(1001)-1)  :: a,b,c
        do i = 0,z
           if (mod(i,2) == 0) then
              a(i) = b(i) * c(i)
           endif
        end do
      end subroutine target_loop
      
      subroutine stride_loop(a,b,c)
        integer(4) :: j
        real(8),dimension(0:(1001)-1)  :: a,b,c
        do j = 0, (1001)-1, (2)
           a(j) = b(j) * c(j)
        end do
      end subroutine stride_loop
      
      subroutine check(x,y)
        integer(4) :: k
        real(8),dimension(0:(1001)-1)  :: x,y
        do k = 0,(1001)-1
           if (.not.is_equal_r(x(k),y(k))) then
              print *, "NG:", k, x(k), y(k)
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
      integer(4) :: l,d(3)
      real(8),dimension(0:(1001)-1)  :: x,y
      real(8),dimension(0:(1001)-1)  :: ans,res
      data d /1,100,1000/
      do l = 0,(1001)-1
         ans(l) = 0.0d0
         res(l) = 0.0d0
         x(l) = l
         y(l) = l
      enddo

      call stride_loop(res,x,y)

      call target_loop(ans,x,y,d(3))

      call check(ans,res)

    end program main
