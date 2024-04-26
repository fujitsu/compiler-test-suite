program main  
  call s1
  call s2
  print *,'pass'
end program main

subroutine s1
  integer :: m = 2
  block
    integer :: a(m)
    if (size(a) /= 2) print *,11
    m = 1
    if (size(a) /= 2) print *,12
  end block
  if (m /= 1) print *,13
end subroutine s1

subroutine s2
  integer :: m = 2
  block
    character(len=m) :: c
    if (len(c) /= 2) print *,4
    m = 1
    if (len(c) /= 2) print *,5
  end block 
  if (m /= 1) print *,6
end subroutine s2
