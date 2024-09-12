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

class(t3), pointer :: obj

call sub(obj1,obj2,obj3,obj)

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
contains 
 subroutine sub(d1,d2,d3,dd)
   class(t1), allocatable :: d3
   class(t3), allocatable :: d1
   class(t1),allocatable :: d2
   class(t3), pointer :: dd

   Allocate(dd)
   dd%kk=10
   dd%jj=20
   dd%ii=30
   allocate(d1,d2,d3,source = dd)

 end subroutine

end
