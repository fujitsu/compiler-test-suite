subroutine s1
type x
   integer::x1
end type
type,extends(x)::y
   integer::y1
end type
class(x),target,allocatable::a1(:),a2(:)
class(x),pointer::p1(:)
allocate (y::a1(4),a2(5))
select type(a1)
type is(y)
a1%y1=[1,2,3,4]
end select
select type(a2)
type is(y)
a2%y1=[-1,-2,-3,-4,-5]
end select
p1=>a2
call move_alloc(to=a1,from=a2)
if (allocated(a2)) print *,101
k=0
select type(a1)
type is(y)
k=k+1
if (any(a1%y1/=[-1,-2,-3,-4,-5])) print *,104
end select
select type(p1)
type is(y)
k=k+1
if (any(p1%y1/=[-1,-2,-3,-4,-5])) print *,102
end select
if (associated(p1,a1)) then
   else
    print *,103
endif
if (k/=2) print *,09
end
call s1
print *,'pass'
end


