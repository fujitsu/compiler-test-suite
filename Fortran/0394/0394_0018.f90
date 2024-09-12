subroutine s1
use ISO_C_BINDING,only:c_ptr
external c_loc
type(c_ptr):: x
integer,target:: t
if (c_associated(x)) then

end if
contains
 logical function c_associated ( x )  result(r)
   type(c_ptr):: x
   r=.true.
 end function
end
print *,'pass'
end

subroutine c_loc
end
