module m
  integer,parameter ::k=2,kk=1
end 

module a2
  integer,parameter :: DP = 8
end 

module z45
  use m
  use a2
  integer :: hoge = DP+kk
end 
  use z45, ONLY :
  use m
  implicit none

  if (k/=2) print *,101

print *,'pass'

end
