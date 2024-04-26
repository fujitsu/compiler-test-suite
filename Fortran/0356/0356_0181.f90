program main
  integer(4) :: i, start, end
  real(4),dimension(1:100) :: a,b
  start=0
  end=100-1
  do i=1,100
     a(i) = 1.0d0
     b(i) = 1.0d0*real(i,kind=4)
  enddo

  call init(a,b,start,end)
  call check(a,b)
end program main

subroutine init(a,b,start,end)
  integer(4) :: i,j,start,end
  real(4),dimension(1:100) :: a,b
  j=1
  start=start+1
  do i=start,end
     a(i) = b(j)
     j=j+1
  enddo
end subroutine init


subroutine check(x,y)
  integer(4) :: i
  real(4),dimension(1:100) :: x, y

  do i = 1,100-1
     if (.not.is_equal_r(x(i),y(i))) then
        print *, "NG", i, x(i),y(i)
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
