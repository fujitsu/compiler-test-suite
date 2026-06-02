program main
  block
    integer :: i
    i = 1
    block
      integer :: a(i)
      if (size(a) /= 1) print *,1
    end block
  end block
  call s
  print *,'pass'
end program main

subroutine s
  integer :: i
  i = 2
  block
    integer :: j
    j = 3
    block
      integer :: a(i), b(j)
      if (size(a) /= 2) print *,2
      if (size(b) /= 3) print *,3
    end block
  end block
end subroutine s
