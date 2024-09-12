subroutine s1
use iso_c_binding
type(c_ptr):: p
integer,target::a(3)
character(5),target:: b
p=c_loc( a )
if (c_associated( p )) then
else 
print *,201
endif
p=c_loc( b )
if (c_associated( p )) then
else 
print *,202
endif
end
call s1
print *,'pass'
end
