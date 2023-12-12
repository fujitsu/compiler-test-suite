module m
  integer ::k
end 

module a2
  integer,parameter :: DP = 8
end 

module z45
  use m
  use a2
  integer :: hoge = DP
end 
module y678
  use z45, ONLY :
  use m
end
use y678,ONLY:
  use m
  implicit none

k=1
  if (k/=1) print *,101

print *,'pass'

end
