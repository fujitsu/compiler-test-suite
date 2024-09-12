module m1
contains
 subroutine s1(p)
use iso_c_binding
type(c_ptr)::p
 end subroutine
 subroutine s2(p) bind(c,name='t2') 
use iso_c_binding
type(c_ptr)::p
    call s3
     contains
       subroutine s3
        call s4
       end subroutine
       subroutine s4
       end subroutine
 end subroutine
end
use m1
use iso_c_binding
type(c_ptr)::p
integer,target::t
p=c_loc(t)
call s1(p)
call s2(p)
print *,'pass'
end

