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
  type(x),pointer,intent(out)::a
  allocate(a)
  allocate(a%x1,source=2)
 end subroutine
 subroutine ss3(a)
  type(y),pointer,intent(out)::a
  allocate(a)
  a%x1=2
 end subroutine
 subroutine ss4(a)
  type(y),intent(out)::a
  a%x1=2
 end subroutine
 function f0(b) result(r)
   type(x)::r,b
   r=b
 end function
 function f1(b) result(r)
   type(x),pointer    ::r
   type(x)::b
   allocate(r)
   r=b
 end function
 function fy1(c) result(r)
   type(y),pointer    ::r
   type(y)::c
   allocate(r)
   r=c
 end function
 function fy0(d) result(r)
   type(y)::d
   type(y)::r
   r=d
 end function
end
subroutine s1
  use m1
  type(x)::b
end
subroutine s2
  use m1
  type(x),allocatable::b
  call ss1(f1(b))
if (b%x1/=2) print *,102
end
subroutine s3
 use m1
  type(y),allocatable::c
end
subroutine s4
  use m1
  type(y)::d
end
subroutine s5
  use m1
  type(y),allocatable::c
  allocate(c)
  c%x1=2
  call ss4(fy1(c))
if (c%x1/=2) print *,105
end
call s5
print *,'pass'
end
