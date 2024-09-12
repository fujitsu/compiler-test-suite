module mod1
type ::ty2(i)
integer,kind::i=4
character(len=i):: chk( 4 )
end type
TYPE(ty2(4))   ::y
end

use mod1
if(len(y%chk) .eq. 4 .and. ubound(y%chk,1) .eq. 4 .and. y%i .eq.4)then
print*,'PASS'
else
print*,'FAIL'
endif
end


