module mod1
real(8):: k
type ty10(ii)
integer,kind :: ii
integer(8) :: array(ii)=(/(k,k=1,4)/)
end type
end
use mod1
end
