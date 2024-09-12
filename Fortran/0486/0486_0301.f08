subroutine s1
type x
 integer:: x1
end type
type ,extends(x):: y
 integer:: y1
end type
class(x),allocatable:: v1
class(y),allocatable:: v2
allocate(v2)
v2%x1=1
v2%y1=11
v1=v2
if (.not.allocated(v1)) print *,101
k=0
select type(v1)
 type is(x)
   print *,102
 type is(y)
   k=1
end select
if (k/=1) print *,103
end
call s1
print *,'pass'
end
