subroutine s1
type x
 integer x1
end type
type xx
 integer xx1
 class(x),allocatable::xx2
 integer xx3
end type
type (xx):: v(2)

do k=1,2
 v(k)%xx1=k*10 + 1
 allocate(v(k)%xx2)
 v(k)%xx2%x1= k*10 + 2
 v(k)%xx3=k*10 + 3
end do
if (v(1)%xx1/=11) print *,101
if (v(2)%xx1/=21) print *,121
if (v(1)%xx3/=13) print *,103
if (v(2)%xx3/=23) print *,123
call t1(v(1)%xx2)
call t2(v(2)%xx2)
contains
subroutine t1(c)
class(x)::c
kk=0
select type(c)
  type is (x)
    kk=1
    if (c%x1/=12) print *,211
end select
    if (kk/=1) print *,321
end subroutine
subroutine t2(c)
class(x)::c
kk=0
select type(c)
  type is (x)
    kk=1
    if (c%x1/=22) print *,221
end select
    if (kk/=1) print *,321
end subroutine
end
call s1
print *,'pass'
end
