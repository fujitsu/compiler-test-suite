program main
  real(4),dimension(1:64) :: a,b,c,d,e,res
  call init(a,b,c,d,e,res)
  call test(a,b,c,d,e)
  call check(a,res)
end program main

subroutine init(a,b,c,d,e,res)
  integer(4) :: i
  real(4),dimension(1:64) :: a,b,c,d,e,res
  do i=1,64
     a(i) = 0.0d0
     b(i) = 1.0d0*real(i,kind=4)
     c(i) = 1.0d0*real(i,kind=4)
     d(i) = 1.0d0*real(i,kind=4)
     e(i) = 1.0d0*real(i,kind=4)
     res(i) = b(i) * c(i) + e(i)
     d(i) =  d(i) + b(i)
  enddo
end subroutine init

subroutine test(a,b,c,d,e)
  integer(4) :: i
  real(4), dimension(1:64) :: a,b,c,d,e, tmp1
  do i=1,64
     tmp1(i) = b(i) * c(i)
     a(i) = tmp1(i) + e(i)
     d(i) = d(i) + b(i) * tmp1(i)
  enddo
end subroutine test

subroutine check(x,y)
  integer(4) :: i
  real(4), dimension(1:64) :: x, y

  do i = 1,64
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
       is_equal_r = ( b .lt. (1.0E-10))
    else if ( b .eq. 0 ) then
       is_equal_r = ( a .lt. (1.0E-10))
    else
       is_equal_r = ( abs(a-b)/abs(a) .lt. (1.0E-10))
    end if
  end function is_equal_r

end subroutine check
