real:: r=1
integer,allocatable::c(:)
allocate(c,source=int  ([r]))
if (any(c/=1)) print *,101
if (any(ubound(c)/=1)) print *,102
deallocate( c )
allocate(c(2),source=int  ([r,r]))
if (any(c/=1)) print *,201
if (any(ubound(c)/=2)) print *,202
print *,'pass'
end
