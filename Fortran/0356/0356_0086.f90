program main
  integer(4),dimension(1:64) :: a,b,c,d,res
  call init(a,b,c,d,res)
  call test(a,b,c,d)
  call check(a,res)
end program main

subroutine init(a,b,c,d,res)
  integer(4) :: i
  integer(4),dimension(1:64) :: a,b,c,d,res
  do i=1,64
     a(i) = 0
     b(i) = i
     c(i) = i
     d(i) = i
     res(i) = b(i) * c(i) + 12
     d(i) =  d(i) + b(i)
  enddo
end subroutine init

subroutine test(a,b,c,d)
  integer(4) :: i
  integer(4), dimension(1:64) :: a,b,c,d
  do i=1,64
     a(i) = b(i) * c(i) + 12
     d(i) = d(i) + b(i)
  enddo
end subroutine test

subroutine check(x,y)
  integer(4) :: i
  integer(4), dimension(1:64) :: x, y

  do i = 1,64
     if (.not.is_equal_r(x(i),y(i))) then
        print *, "NG", i, x(i),y(i)
        exit
     endif
  enddo
  print *, "OK"

contains
  logical function is_equal_r(a,b)
    integer(4) :: a, b
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
