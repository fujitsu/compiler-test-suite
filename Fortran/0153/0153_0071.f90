complex,pointer::a(:,:,:,:,:,:,:)
!$omp threadprivate(a)
allocate(a(1,1,1,1,1,1,1))
a=1
call sss(a)
call chk
print *,'pass'
contains
subroutine sss(a)
complex,pointer::a(:,:,:,:,:,:,:)
namelist /nnn/a
write(1,nnn)
end subroutine
end
subroutine chk
complex::a
namelist /nnn/ a
rewind 1
read(1,nnn)
if (a/=1) print *,a
end
