real:: r=1
complex,allocatable::c,cc(:)
c=cmplx(r,1.0)
if (c/=(1,1)) print *,101
cc=cmplx([r],1.0)
if (any(cc/=(1,1))) print *,102
if (any(ubound(cc)/=1)) print *,103
cc=cmplx(r,[2.0])
if (any(cc/=(1,2))) print *,202
if (any(ubound(cc)/=1)) print *,203
print *,'pass'
end
