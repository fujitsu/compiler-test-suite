module mod
contains
subroutine s(i)
procedure(character(1,4/4)),optional,pointer::i
end subroutine
end module
use mod
print *,'pass'
end 
