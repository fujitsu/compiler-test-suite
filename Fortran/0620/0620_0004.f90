  implicit none

  integer, allocatable :: m(:)
  integer :: n

  m = [ 1, 2, 3 ]
  n = size (m)
  if (.not. allocated (m) .or. n /= 3) then
     print *, "Bug in automatic allocation."
     stop
  end if
  m = [ 4, 5 ]
  n = size (m)
  if (.not. allocated (m) .or. n /= 2) then
     print *, "Bug in automatic reallocation."
     stop
  end if
print *,'pass'
end 
