module m1
contains 
subroutine tt(a1,a2,a3)
integer,optional::a1(:,:,:,:,:,:,:,:)
integer,optional::a2(:,:,:,:,:,:,:,:)
integer,optional::a3(:,:,:,:,:,:,:,:)
if (present(a1)) print *,102
if (present(a2)) print *,202
if (present(a3)) print *,302
if (present(a1)) then
  a1=1
endif
end subroutine
end
subroutine s1
use m1
call tt(null(),null(),null())
end
call s1
print *,'pass'
end




