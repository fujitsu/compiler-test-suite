module m1
 type x
   character(:),pointer:: p(:)
   integer:: x1
 end type
 type y
   character(80):: p(1)
   integer:: y1
 end type
 type yy
   character(1):: p(2)
   integer:: y1
 end type
 type yyy
   character(1):: p
   integer:: y1
 end type
 type z
   character(:),pointer:: p
   integer:: x1
 end type
contains
subroutine s1(v,k,w,ww,w1,w2)
type (x),pointer:: v
type (y) :: w
type (yy) :: w1
type (yyy) :: w2
type (z) ::ww
k=0
select case(v%p(1))
  case ('xyx')
    k=1
end select
if (k/=1) print *,301
i=1
select case(w%p(i))
  case ('xyx')
    k=1
end select
if (k/=1) print *,302
select case(ww%p)
  case ('xyx')
    k=1
end select
if (k/=1) print *,303
select case(w1%p(2))
  case ('x')
    k=1
end select
if (k/=1) print *,304
select case(w2%p)
  case ('x')
    k=1
end select
if (k/=1) print *,305
end subroutine
end

use m1
type(x),pointer:: v
type (y) :: w
type (z) ::ww
type (yy) :: w1
type (yyy) :: w2
allocate(v)
allocate(character(3)::v%p(10))
v%p='xyx'
w%p='xyx'
allocate(character(80)::ww%p)
ww%p='xyx'
w1%p='xyx'
w2%p='xyx'
call s1(v,k,w,ww,w1,w2)
print *,'pass'
end
