program main
  logical(kind=4) :: sum
  logical(kind=4),dimension(100) :: a
  data sum/.false./
  call sub(a)

  sum = any(a)
  print*, sum
end program main

subroutine sub(a)
  logical(kind=4),dimension(100) :: a
  a = .false.
  a(100) = .true.
end subroutine sub
