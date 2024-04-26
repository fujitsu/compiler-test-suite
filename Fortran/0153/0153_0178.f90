subroutine s1
type x
 integer(8) x1
end type
type xx
 integer(8) xx1
 class(x),allocatable::xx2
 integer(8) xx3
end type
type (xx):: v

 v%xx1=1
 allocate(v%xx2)
 v%xx2%x1= 2
 v%xx3=3
if (v%xx1/=1) print *,101
if (v%xx3/=3) print *,103
call t1(v%xx2)
contains
subroutine t1(c)
class(x)::c
kk=0
select type(c)
  type is (x)
    kk=1
    if (c%x1/=2) print *,211
end select
    if (kk/=1) print *,321
end subroutine
end
call s1
print *,'pass'
end
