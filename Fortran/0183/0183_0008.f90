real:: r=2
complex::sfun
complex,allocatable::c(:)
sfun(k)=cmplx(k,r)
allocate(c(2),source=sfun(1))
if (any(c/=(1,2))) print *,101
if (any(ubound(c)/=2)) print *,102
deallocate(c)
allocate(c,source=[sfun(1),sfun(1)])
if (any(c/=(1,2))) print *,122
if (any(ubound(c)/=2)) print *,202
print *,'pass'
end
