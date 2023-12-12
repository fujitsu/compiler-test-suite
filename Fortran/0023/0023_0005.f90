module module_1st
  integer ::k
end module module_1st

module module_2nd
  integer,parameter :: DP = 8
end module module_2nd

module module_3rd
  use module_2nd 
  use module_1st
  integer :: hoge = DP
end module module_3rd

  use module_1st 
  use module_3rd, ONLY :
  implicit none

k=1
  if (k/=1) print *,101

print *,'pass'

end
