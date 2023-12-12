module module_1st
  integer ::MPI_INTEGER=1
end module module_1st
module module_2nd
  integer :: DP 
end module module_2nd
module module_3rd
  use module_1st
  use module_2nd
  integer :: hoge =kind(DP)
end module module_3rd

  use module_3rd, ONLY :
  use module_1st  !NOT PASS
  use module_3rd, ONLY :
  implicit none
  if (MPI_INTEGER.ne.1) print *,'ng'
  print *,'pass'
end
