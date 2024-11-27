subroutine mysub01(x)
  real,intent(inout) :: x
  x = addone(x)
  contains
   real function addone(x)
     real x
     addone = x + 1.0
  end function addone
end subroutine mysub01  

program main
  real val
  val = 5.0

  !$omp task  default(none) 
  !$omp task
  call mysub01(val)
  !$omp end task
  !$omp end task
end program main
