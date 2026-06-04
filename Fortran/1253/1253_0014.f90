subroutine s(ii)
integer :: ii
real ::a00014 = 0.0
real ::a00082 = 0.0
!!!! implicit none
  block
ASYNCHRONOUS       ::a00014,a00082
if (ii.eq.1) then
a00014=1.1
if (a00014/=1.1) print *,1001
a00082=2.1
else
if (a00082/=2.1) print *,1002
endif
end  block
if (a00014/=1.1) print *,1003
if (a00082/=2.1) print *,1004
end
call s(1)
print *,'pass'
end
