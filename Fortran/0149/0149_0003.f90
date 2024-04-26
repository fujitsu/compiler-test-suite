program main
  call s1
  call s2(1)
  print *,'pass'
end program main

subroutine s1
  integer :: x, y, tmp
  x = 10
  y = 5
  tmp = 100
  if (.true.) then
     block
       real(kind(x)) tmp
       tmp = x
       x = y
       y = tmp
     end block
  end if
  if (x /= 5) print *,11
  if (y /= 10) print *,12
  if (tmp /= 100) print *,13
end subroutine s1

recursive subroutine s2(n)
  integer(8) :: inner_addr(2,3), outer_addr(2)
  integer :: x
  save
  outer_addr(n) = loc(x)
  block
    real x
    real, save :: y
    z = 3
    inner_addr(n,1) = loc(x)
    inner_addr(n,2) = loc(y)
    inner_addr(n,3) = loc(z)
  end block
  select case(n)
  case(1)
     call s2(n+1)
  case (2)
     if (inner_addr(1,1) == inner_addr(2,1)) print *,21
     if (inner_addr(1,2) /= inner_addr(2,2)) print *,22
     if (inner_addr(1,3) /= inner_addr(2,3)) print *,23
     if (outer_addr(1) /= outer_addr(2)) print *,24
     if (inner_addr(1,3) /= loc(z)) print *,25
     return
  end select
end subroutine s2
