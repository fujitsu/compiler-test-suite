call s0100
call s0110
call s0111
call s0101
call s0001
call s0011
call s0000
call s0010
print *,'pass'
end
subroutine s0100
TYPE gg
  SEQUENCE; integer     ::t,q,f
END TYPE
type g
  integer ::dummy; type (gg)::h;type(gg)::w
end type
TYPE(g) ,POINTER::x
do i=1,5
      ALLOCATE (x)
      x%w=gg(11,12,13)
      x%h=gg(1,2,3)
      x%h%t=x%h%q
if (x%h%t/=2)print *,'error-1',x%h%t
if (x%h%q/=2)print *,'error-2',x%h%q
if (x%h%f/=3)print *,'error-3',x%h%f
      x%h=x%w
      x%h%t=x%h%q
if (x%h%t/=12)print *,'error-11',x%h%t
if (x%h%q/=12)print *,'error-12',x%h%q
if (x%h%f/=13)print *,'error-13',x%h%f
end do
END 
subroutine s0110
TYPE gg
  SEQUENCE; integer     ::t,q,f
END TYPE
type g
  integer ::dummy; type (gg),pointer::h;type(gg),pointer::w
end type
TYPE(g) ,POINTER::x
integer,target::t01=1,t02=2,t03=3,t11=11,t12=12,t13=13
do i=1,5
      ALLOCATE (x)
      ALLOCATE (x%h,x%w)
      x%w=gg(t11,t12,t13)
      x%h=gg(t01,t02,t03)
      x%h%t=x%h%q
if (x%h%t/=2)print *,'error-1',x%h%t
if (x%h%q/=2)print *,'error-2',x%h%q
if (x%h%f/=3)print *,'error-3',x%h%f
      x%h=x%w
      x%h%t=x%h%q
if (x%h%t/=12)print *,'error-11',x%h%t
if (x%h%q/=12)print *,'error-12',x%h%q
if (x%h%f/=13)print *,'error-13',x%h%f
end do
END 
subroutine s0111
TYPE gg
  SEQUENCE; integer,pointer::t,q,f
END TYPE
type g
  integer ::dummy; type (gg),pointer::h;type(gg),pointer::w
end type
TYPE(g) ,POINTER::x
integer,target::t01=1,t02=2,t03=3,t11=11,t12=12,t13=13
do i=1,5
      ALLOCATE (x)
      ALLOCATE (x%h,x%w)
      ALLOCATE (x%h%t,x%w%t,x%h%q,x%w%q,x%h%f,x%w%f)
      x%w=gg(t11,t12,t13)
      x%h=gg(t01,t02,t03)
      x%h%t=x%h%q
if (x%h%t/=2)print *,'error-1',x%h%t
if (x%h%q/=2)print *,'error-2',x%h%q
if (x%h%f/=3)print *,'error-3',x%h%f
      x%h=x%w
      x%h%t=x%h%q
if (x%h%t/=12)print *,'error-11',x%h%t
if (x%h%q/=12)print *,'error-12',x%h%q
if (x%h%f/=13)print *,'error-13',x%h%f
end do
END 
subroutine s0101
TYPE gg
  SEQUENCE; integer,pointer::t,q,f
END TYPE
type g
  integer ::dummy; type (gg)::h;type(gg)::w
end type
TYPE(g) ,POINTER::x
integer,target::t01=1,t02=2,t03=3,t11=11,t12=12,t13=13
do i=1,5
      ALLOCATE (x)
      ALLOCATE (x%h%t,x%w%t,x%h%q,x%w%q,x%h%f,x%w%f)
      x%w=gg(t11,t12,t13)
      x%h=gg(t01,t02,t03)
      x%h%t=x%h%q
if (x%h%t/=2)print *,'error-1',x%h%t
if (x%h%q/=2)print *,'error-2',x%h%q
if (x%h%f/=3)print *,'error-3',x%h%f
      x%h=x%w
      x%h%t=x%h%q
if (x%h%t/=12)print *,'error-11',x%h%t
if (x%h%q/=12)print *,'error-12',x%h%q
if (x%h%f/=13)print *,'error-13',x%h%f
end do
END 
subroutine s0001
TYPE gg
  SEQUENCE; integer,pointer::t,q,f
END TYPE
type g
  integer ::dummy; type (gg)::h;type(gg)::w
end type
TYPE(g)         ::x
integer,target::t01=1,t02=2,t03=3,t11=11,t12=12,t13=13
do i=1,5
      ALLOCATE (x%h%t,x%w%t,x%h%q,x%w%q,x%h%f,x%w%f)
      x%w=gg(t11,t12,t13)
      x%h=gg(t01,t02,t03)
      x%h%t=x%h%q
if (x%h%t/=2)print *,'error-1',x%h%t
if (x%h%q/=2)print *,'error-2',x%h%q
if (x%h%f/=3)print *,'error-3',x%h%f
      x%h=x%w
      x%h%t=x%h%q
if (x%h%t/=12)print *,'error-11',x%h%t
if (x%h%q/=12)print *,'error-12',x%h%q
if (x%h%f/=13)print *,'error-13',x%h%f
end do
END 
subroutine s0011
TYPE gg
  SEQUENCE; integer,pointer::t,q,f
END TYPE
type g
  integer ::dummy; type (gg),pointer::h;type(gg),pointer::w
end type
TYPE(g)         ::x
integer,target::t01=1,t02=2,t03=3,t11=11,t12=12,t13=13
do i=1,5
      ALLOCATE (x%h,x%w)
      ALLOCATE (x%h%t,x%w%t,x%h%q,x%w%q,x%h%f,x%w%f)
      x%w=gg(t11,t12,t13)
      x%h=gg(t01,t02,t03)
      x%h%t=x%h%q
if (x%h%t/=2)print *,'error-1',x%h%t
if (x%h%q/=2)print *,'error-2',x%h%q
if (x%h%f/=3)print *,'error-3',x%h%f
      x%h=x%w
      x%h%t=x%h%q
if (x%h%t/=12)print *,'error-11',x%h%t
if (x%h%q/=12)print *,'error-12',x%h%q
if (x%h%f/=13)print *,'error-13',x%h%f
end do
END 
subroutine s0000
TYPE gg
  SEQUENCE; integer        ::t,q,f
END TYPE
type g
  integer ::dummy; type (gg)::h;type(gg)::w
end type
TYPE(g)         ::x
integer,target::t01=1,t02=2,t03=3,t11=11,t12=12,t13=13
do i=1,5
      x%w=gg( 11, 12,t13)
      x%h=gg( 01, 02, 03)
      x%h%t=x%h%q
if (x%h%t/=2)print *,'error-1',x%h%t
if (x%h%q/=2)print *,'error-2',x%h%q
if (x%h%f/=3)print *,'error-3',x%h%f
      x%h=x%w
      x%h%t=x%h%q
if (x%h%t/=12)print *,'error-11',x%h%t
if (x%h%q/=12)print *,'error-12',x%h%q
if (x%h%f/=13)print *,'error-13',x%h%f
end do
END 
subroutine s0010
TYPE gg
  SEQUENCE; integer        ::t,q,f
END TYPE
type g
  integer ::dummy; type (gg),pointer::h;type(gg),pointer::w
end type
TYPE(g)         ::x
integer,target::t01=1,t02=2,t03=3,t11=11,t12=12,t13=13
do i=1,5
      ALLOCATE (x%h,x%w)
      x%w=gg(t11,t12,t13)
      x%h=gg(001,002,003)
      x%h%t=x%h%q
if (x%h%t/=2)print *,'error-1',x%h%t
if (x%h%q/=2)print *,'error-2',x%h%q
if (x%h%f/=3)print *,'error-3',x%h%f
      x%h=x%w
      x%h%t=x%h%q
if (x%h%t/=12)print *,'error-11',x%h%t
if (x%h%q/=12)print *,'error-12',x%h%q
if (x%h%f/=13)print *,'error-13',x%h%f
end do
END 
