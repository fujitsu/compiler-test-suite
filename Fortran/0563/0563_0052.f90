type t1
 integer :: ii
end type

type, extends(t1) :: t2
 integer :: jj
end type

type, extends(t2) :: t3
 integer :: kk
end type

class(t1), allocatable :: obj3
class(t3), allocatable :: obj1
class(t1), allocatable :: obj2

type(t3) :: obj
obj%kk=10
obj%jj=20
obj%ii=30
allocate(obj1,obj2,obj3,source = obj)

select type(obj1)
type is(t3)
 if(obj1%ii.ne.30) print*,201
 if(obj1%jj.ne.20) print*,202
 if(obj1%kk.ne.10) print*,203
 xx = 1
class default
 print *,101
end select

if(xx /= 1) print *,111
xx=0

select type(obj2)
type is(t3)
 if(obj2%ii.ne.30) print*,204
 if(obj2%jj.ne.20) print*,205
 if(obj2%kk.ne.10) print*,206
 xx = 1
class default
 print *,102
end select
if(xx /= 1) print *,222
xx=0

select type(obj3)
type is(t3)
 if(obj3%ii.ne.30) print*,207
 if(obj3%jj.ne.20) print*,208
 if(obj3%kk.ne.10) print*,209
 xx = 1
class default
 print *,103
end select
if(xx /= 1) print *,333

print *,"Pass"

end