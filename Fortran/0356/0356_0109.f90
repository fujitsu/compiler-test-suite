program main
  integer(4),dimension(1:64) :: a,b,c,d,e,res
  call init(a,b,c,d,e,res)
  call test(a,b,c,d,e)
  call check(a,res)
end program main

subroutine init(a,b,c,d,e,res)
  integer(4) :: i
  integer(4),dimension(1:64) :: a,b,c,d,e,res,neg1
  do i=1,64
     a(i) = 0
     b(i) = i
     c(i) = i
     d(i) = i
     e(i) = i
     neg1(i) = - 1 * c(i)
     res(i) = b(i) * neg1(i) - e(i)
     d(i) =  d(i) - b(i)
  enddo
end subroutine init

subroutine test(a,b,c,d,e)
  integer(4) :: i
  integer(4), dimension(1:64) :: a,b,c,d,e, tmp1,neg1
  do i=1,64
     neg1(i) = - 1 * c(i)
     tmp1(i) = b(i) * neg1(i)
     a(i) = tmp1(i) - e(i)
     d(i) = d(i) - b(i) * e(i)
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
