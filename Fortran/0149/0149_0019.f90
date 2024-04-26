program main
  real :: i = 0.5
   block
     external sin
     call sin(j)
     if (j /= 100) print *,1
  end block
  if (sin(i) > 1) print *,2
  print *,'pass'
end program main

subroutine sin(i)
  integer :: i
  i = 100
end subroutine sin
