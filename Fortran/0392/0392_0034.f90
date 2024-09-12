module m1
contains 
subroutine ss(a1)
integer,optional::a1(:,:,:,:,:,:,:)
if (present(a1)) print *,101
if (present(a1)) then
  a1=1
endif
end subroutine
subroutine tt(a1)
integer,optional::a1(1,1,1,1,1,1,1)
if (present(a1)) print *,102
if (present(a1)) then
  a1(:,:,:,:,:,:,1)=1
endif
end subroutine
subroutine uu(a1)
integer,optional::a1(1,1,1,1,1,1,*)
if (present(a1)) print *,103
if (present(a1)) then
  a1(:,:,:,:,:,:,1)=1
endif
end subroutine
subroutine ww(a1)
integer,optional::a1
if (present(a1)) print *,104
if (present(a1)) then
  a1=1
endif
end subroutine
end
subroutine s1
use m1
call ss(null())
call tt(null())
call uu(null())
call ww(null())
end
call s1
print *,'pass'
end




