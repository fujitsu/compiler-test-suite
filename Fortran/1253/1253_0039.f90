subroutine s(ii)
integer :: ii
real ::a00014 = 0.0
!!!! implicit none
  block
save       ::a00014,a00082
real ::a00014,a00082
if (ii.eq.1) then
a00014=1.1
if (a00014/=1.1) print *,1001
a00014=2.1
else
if (a00014/=2.1) print *,1002
endif
end  block
if (a00014/=0.0) print *,1003
end
call s(1)
print *,'pass'
end
