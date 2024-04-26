module m
  implicit none
  type point
     real(4),allocatable :: a(:),b(:)
  end type point
end module m


program main
  use m
  integer(4) :: i, start, end
  type(point) :: locate
  allocate( locate%a(100) )
  allocate( locate%b(100) )
  start=1
  end=100-1
  do i=1,100
     locate%a(i) = 1.0d0
     locate%b(i) = 1.0d0*real(i,kind=4)
  enddo

  call init(locate,start, end)
  call check(locate)
end program main

subroutine init(locate,start,end)
  use m
  integer(4) :: i,j,start,end
  type(point) :: locate
  j=1
  do i=start,end
     locate%a(i) = locate%b(j)
     j=j+1
  enddo
end subroutine init


subroutine check(locate)
  use m
  integer(4) :: i
  type(point) :: locate
  do i = 1,100-1
     if (.not.is_equal_r(locate%a(i), locate%b(i))) then
        print *, "NG", i, locate%a(i), locate%b(i)
        exit
     endif
  enddo
  print *, "OK"

contains
  logical function is_equal_r(a,b)
    real(4) :: a, b
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
