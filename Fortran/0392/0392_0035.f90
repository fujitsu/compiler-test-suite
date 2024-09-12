module m1
contains 
subroutine tt(a1)
integer,optional::a1(2)
if (present(a1)) print *,102
if (present(a1)) then
  a1=1
endif
end subroutine
end
subroutine s1
use m1
call tt(null())
end
call s1
print *,'pass'
end




