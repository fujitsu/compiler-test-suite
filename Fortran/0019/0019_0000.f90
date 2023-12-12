module mod1
implicit none
integer(1) :: k
type ty10(ii)
integer(8),kind::ii=20
integer(8) :: array(ii)=(/(k,k=1,ii)/)
end type
end
module mod
use mod1 
implicit none
end
print *,'OK'
end
