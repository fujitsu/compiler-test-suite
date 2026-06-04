subroutine s(ii)
integer :: ii
real ::a00014 = 0.0
!!!! implicit none
  block
CONTIGUOUS       ::a00014,a00082
pointer :: a00014(:),a00082(:)
allocate(a00014(1),a00082(1))
if (ii.eq.1) then
a00014=1.1
if (a00014(1)/=1.1) print *,1001
a00082=2.1
else
if (a00082(1)/=2.1) print *,1002
endif
end  block
if (a00014/=0.0) print *,1003
end
call s(1)
print *,'pass'
end
