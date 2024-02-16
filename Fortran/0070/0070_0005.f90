subroutine s1
use ISO_C_BINDING
integer,target::a(3)
integer,pointer::b(:)
type(c_ptr)::cp

allocate(b(3))
cp=c_loc( b(:) )
k=1
cp=c_loc( b(::k) )
end
call s1
print *,'pass'
end
