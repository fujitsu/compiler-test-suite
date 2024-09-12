integer,allocatable:: a(:),b(:),c(:)
allocate(b(-10:-9))
b=[1,2]
if (any(lbound(b)/=-10)) print *,1001
if (any(ubound(b)/=- 9)) print *,1002
allocate(a , mold=b )
if (any(lbound(a)/=-10)) print *,1101
if (any(ubound(a)/=- 9)) print *,1102
allocate(c , source=b )
if (any(lbound(c)/=-10)) print *,1201
if (any(ubound(c)/=- 9)) print *,1202
if (any(c/=[1,2])) print *,1203
print *,'pass'
end
