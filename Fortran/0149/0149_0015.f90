program main
  integer :: i,j
  parameter (i=1)
  j = 1
  block
    parameter (i=3,j=4)
    if (i/=3) print *,1
    if (j/=4) print *,2
  end block
  if (i/=1) print *,3
  if (j/=1) print *,4
  j = 2
  if (j/=2) print *,5
  print *,'pass'
end program main
