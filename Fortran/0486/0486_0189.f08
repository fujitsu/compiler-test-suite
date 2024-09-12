real:: r=1
complex,allocatable::c
write(1,*)cmplx(r,1.0)
allocate(c,source=cmplx(r,1.0))
if (c/=(1,1)) print *,101
print *,'pass'
end
