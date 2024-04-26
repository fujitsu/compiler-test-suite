module mm
type t
integer,pointer:: ppp=>null()
end type
type(t)::ttt
contains
subroutine sss1
ttt%ppp=10
call sss
call sss
if (ttt%ppp/=100) print *,'err'
contains
subroutine sss
ttt%ppp=100
end subroutine
end subroutine
end
use mm
allocate (ttt%ppp )
call sss1
call sss1
call sss2
print *,'pass'
end
subroutine sss2()
use mm
call sss1
call sss1
end subroutine
