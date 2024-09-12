module m1
contains
subroutine s(f1,f2)
use iso_c_binding
integer(4),target:: a1(2)
logical(4),target:: a2(2)
integer(4),target:: s1
logical(4),target:: s2
integer(4),pointer:: b1(:)
logical(4),pointer:: b2(:)
integer(4),pointer:: c1
logical(4),pointer:: c2
integer(4),target,allocatable:: d1(:)
logical(4),target,allocatable:: d2(:)
integer(4),target,allocatable:: e1
logical(4),target,allocatable:: e2
integer(4),target:: f1(:)
logical(4),target:: f2(:)
type(c_ptr):: v1,v2
allocate(c1,c2,b1(2),b2(2))
v1=c_loc(a1)
v2=c_loc(a2)
if (c_associated(v1,v2)) print *,201
v1=c_loc(s1)
v2=c_loc(s2)
if (c_associated(v1,v2)) print *,202
v1=c_loc(b1)
v2=c_loc(b2)
if (c_associated(v1,v2)) print *,203
v1=c_loc(c1)
v2=c_loc(c2)
if (c_associated(v1,v2)) print *,204
v1=c_loc(d1)
v2=c_loc(d2)
if (c_associated(v1,v2)) print *,205
v1=c_loc(e1)
v2=c_loc(e2)
if (c_associated(v1,v2)) print *,206
v1=c_loc(f1)
v2=c_loc(f2)
if (c_associated(v1,v2)) print *,206
end
end
use m1
integer(4),target:: f1(2)
logical(4),target:: f2(2)
call s(f1,f2)
print *,'pass'
end

