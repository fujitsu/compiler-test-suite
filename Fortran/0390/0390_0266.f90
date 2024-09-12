module m1
type x
  integer::x01
end type
type,extends(x)::y
  integer::y01
end type
contains
subroutine s01(x1)
class(y),intent(out),pointer::x1
allocate(x1)
x1%y01 = 1
end subroutine
subroutine s02(x1)
class(y),intent(out),pointer::x1
end subroutine
subroutine s03(x1)
class(y),intent(inout),pointer::x1
end subroutine
subroutine s13(x1)
class(y),intent(in),pointer::x1
end subroutine
subroutine s04(x1)
class(y),pointer::x1
end subroutine
subroutine s05(x1)
class(y),intent(inout),pointer::x1
if (x1%y01 /= 2) print *,201
x1%y01 = 1
end subroutine
subroutine s06(x1)
class(y),intent(in),pointer::x1
if (x1%y01 /= 2) print *,203
end subroutine
subroutine s07(x1)
class(y),pointer::x1
if (x1%y01 /= 2) print *,202
x1%y01 = 1
end subroutine
end
use m1
class(y),pointer::x1
allocate(x1)
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

