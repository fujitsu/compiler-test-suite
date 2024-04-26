subroutine s_1(a,b)
 integer(1),intent(in)::a,b
  if (a.ne.b) print *,'ng'
end subroutine

integer(1) ri1007
parameter(ri1007=ibset(1_1,7_1))
  call s_1(ibset(1_1,7_1),ri1007)
call test02()
call test03()
print *,'pass'
end

module mod02
contains
subroutine s_1(a,b)
 integer(1),intent(in)::a,b
  if (a.ne.b) print *,'ng'
end subroutine
end

subroutine test02()
use mod02
integer(1) ri1007
parameter(ri1007=ibset(1_1,7_1))
call s_1(ibset(1_1,7_1),ri1007)
end

subroutine test03()
integer(1) ri1007
parameter(ri1007=ibset(1_1,7_1))
call s_1(ibset(1_1,7_1),ri1007)
contains
subroutine s_1(a,b)
 integer(1),intent(in)::a,b
  if (a.ne.b) print *,'ng'
end subroutine
end
