type t1
 integer :: ii
end type

type, extends(t1) :: t2
 integer :: jj
end type

type, extends(t2) :: t3
 integer :: kk
end type

class(t1), allocatable :: obj3(:,:)
class(t3), allocatable :: obj1(:,:)
class(t1), allocatable :: obj2(:,:)

type(t3) :: obj(2,3)
obj(:,:)%kk=10
obj(:,:)%jj=20
obj(:,:)%ii=30

call sub(obj1,obj2,obj3,obj)

select type(obj1)
type is(t3)
 if(any(obj1(:,:)%ii.ne.30)) print*,201
 if(any(obj1(:,:)%jj.ne.20)) print*,202
 if(any(obj1(:,:)%kk.ne.10)) print*,203
 xx = 1
class default
 print *,101
end select

if(xx /= 1) print *,111
xx=0

select type(obj2)
type is(t3)
 if(any(obj2(:,:)%ii.ne.30)) print*,204
 if(any(obj2(:,:)%jj.ne.20)) print*,205
 if(any(obj2(:,:)%kk.ne.10)) print*,206
 xx = 1
class default
 print *,102
end select
if(xx /= 1) print *,222
xx=0

select type(obj3)
type is(t3)
 if(any(obj3(:,:)%ii.ne.30)) print*,207
 if(any(obj3(:,:)%jj.ne.20)) print*,208
 if(any(obj3(:,:)%kk.ne.10)) print*,209
 xx = 1
class default
 print *,103
end select
if(xx /= 1) print *,113

if(lbound(obj1,1) .ne. 1) print*,"101"
if(lbound(obj1,2) .ne. 1) print*,"102"
if(ubound(obj1,1) .ne. 2) print*,"103"
if(ubound(obj1,2) .ne. 3) print*,"104"

if(lbound(obj3,1) .ne. 1) print*,"105"
if(lbound(obj3,2) .ne. 1) print*,"106"
if(ubound(obj3,1) .ne. 2) print*,"107"
if(ubound(obj3,2) .ne. 3) print*,"108"
if(size(obj1) /= 6) print *,109
if(size(obj2) /= 6) print *,110
if(size(obj3) /= 6) print *,111
print *,"Pass"
contains 
 subroutine sub(d1,d2,d3,dd)
   class(t1), allocatable :: d3(:,:)
   class(t3), allocatable :: d1(:,:)
   class(t1), allocatable :: d2(:,:)
   type(t3) :: dd(2,3)
   allocate(d1,d2,d3,source = dd)

 end subroutine

end
