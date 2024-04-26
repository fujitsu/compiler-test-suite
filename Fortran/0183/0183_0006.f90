real:: r=1
complex,allocatable::c(:)
write(1,*)cmplx([r],1.0)
allocate(c(1),source=cmplx([r],1.0))
if (any(c/=(1,1))) print *,101
if (any(ubound(c)/=1)) print *,102
call chk
print *,'pass'
end
subroutine chk
complex a
rewind 1
read(1,*) a
if (   (a/=(1,1))) print *,201
end

