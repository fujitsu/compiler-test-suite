module m1
type x
  integer::x01
end type
type,extends(x)::y
  integer::y01
end type
contains
subroutine s01(x1)
class(*),intent(out)::x1
select type (x1)
 class is(y)
x1%y01 = 1
end select
end subroutine
subroutine s02(x1)
class(*),intent(out)::x1
end subroutine
subroutine s03(x1)
class(*),intent(inout)::x1
end subroutine
subroutine s13(x1)
class(*),intent(in)::x1
end subroutine
subroutine s04(x1)
class(*)::x1
end subroutine
subroutine s05(x1)
class(*),intent(inout)::x1
select type (x1)
 class is(y)
if (x1%y01 /= 2) print *,201
x1%y01 = 1
end select
end subroutine
subroutine s06(x1)
class(*),intent(in)::x1
select type (x1)
 class is(y)
if (x1%y01 /= 2) print *,203
end select
end subroutine
subroutine s07(x1)
class(*)::x1
select type (x1)
 class is(y)
if (x1%y01 /= 2) print *,202
x1%y01 = 1
end select
end subroutine
end
use m1
type(y)::x1
x1%y01=2
call s01(x1)
x1%y01=2
call s05(x1)
if (x1%y01 /= 1) print *,301
x1%y01=2
call s06(x1)
x1%y01=2
call s07(x1)
if (x1%y01 /= 1) print *,303
print *,'pass'
end

