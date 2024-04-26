program main
  call s
  print *,'pass'
end program main

subroutine s
  integer :: i = 5
  block
    integer, dimension(i) :: a
    if (size(a) /= 5) print *,1
    i = 10
    if (size(a) /= 5) print *,2
    if (i /= 10) print *,3
  end block
  if (i /= 10) print *,4
end subroutine s
