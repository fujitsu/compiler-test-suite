module m1
 type x
   integer,allocatable::x1
 end type
 type y
   integer::x1
 end type
contains
 subroutine ss1(a)
  type(x),intent(out)::a
  allocate(a%x1,source=2)
 end subroutine
 subroutine ss2(a)
  type(x),allocatable,intent(out)::a
  allocate(a)
  allocate(a%x1,source=2)
 end subroutine
 subroutine ss3(a)
  type(y),allocatable,intent(out)::a
  allocate(a)
  a%x1=2
 end subroutine
 subroutine ss4(a)
  type(y),intent(out)::a
  a%x1=2
 end subroutine
end
subroutine s1
  use m1
  type(x)::b
  call ss1(b)
if (b%x1/=2) print *,101
end
subroutine s2
  use m1
  type(x),allocatable::b
  call ss2(b)
if (b%x1/=2) print *,102
end
subroutine s3
  use m1
  type(y),allocatable::c
  call ss3(c)
if (c%x1/=2) print *,103
end
subroutine s4
  use m1
  type(y)::d
  call ss4(d)
if (d%x1/=2) print *,104
end
subroutine s5
  use m1
  type(y),allocatable::c
  allocate(c)
  call ss4(c)
if (c%x1/=2) print *,105
end
call s1
call s2
call s3
call s4
call s5
print *,'pass'
end
