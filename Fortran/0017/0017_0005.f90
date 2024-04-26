module module_1st
  integer ::MPI_INTEGER=1
end module module_1st
module module_2nd
  integer :: DP 
end module module_2nd
module module_3rd
  use module_1st
  use module_2nd
  integer :: itmp =kind(DP)
end module module_3rd

  use module_3rd, ONLY :
  use module_1st
  use module_3rd, ONLY :DP
  use module_3rd, ONLY :
  implicit none
  if (kind(DP) .ne.kind(DP)) print *,'ng'
  if (MPI_INTEGER.ne.1) print *,'ng'
  print *,'pass'
end
