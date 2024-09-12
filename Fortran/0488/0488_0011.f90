subroutine s1
integer,allocatable::a1(:),a2(:),a3(:)
allocate(a3(2:3))
a3=[1,2]
allocate(a1,a2,source=a3)
if (any(ubound(a1)/=3)) print *,101
if (any(ubound(a2)/=3)) print *,102
if (any(ubound(a3)/=3)) print *,103
if (any(lbound(a1)/=2)) print *,201
if (any(lbound(a2)/=2)) print *,202
if (any(lbound(a3)/=2)) print *,203
if (any(      a1/=[1,2])) print *,301
if (any(      a2/=[1,2])) print *,302
if (any(      a3/=[1,2])) print *,303
end
call s1
print *,'pass'
end
