module m0
contains
subroutine s01
entry      s011
end subroutine
subroutine s02
entry      s021
end subroutine
end
module m1
use m0
contains
subroutine s11
entry      s111
end subroutine
subroutine s12
entry      s121
end subroutine
end
 use m1
call s01
call s01
call s011
call s011
call s02
call s02
call s021
call s021
call s11
call s11
call s111
call s111
call s12
call s12
call s121
call s121
call inter
print *,'pass'
contains
subroutine inter
 use m1
call s01
call s01
call s011
call s011
call s02
call s02
call s021
call s021
call s11
call s11
call s111
call s111
call s12
call s12
call s121
call s121
end subroutine
end
