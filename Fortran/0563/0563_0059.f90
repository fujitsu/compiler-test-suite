type t1
 integer :: ii
end type

type, extends(t1) :: t2
 integer :: jj
end type

type, extends(t2) :: t3
 integer :: kk
end type

class(t1), allocatable :: obj3(:,:,:)
class(t3), allocatable :: obj1(:,:,:)
class(t1), allocatable :: obj2(:,:,:)

class(t3), pointer :: obj(:,:,:)

call sub(obj1,obj2,obj3,obj)

select type(obj1)
type is(t3)
 xx = 1
class default
 print *,101
end select

if(xx /= 1) print *,111

select type(obj2)
type is(t3)
 xx = 1
class default
 print *,102
end select
if(xx /= 1) print *,222

select type(obj3)
type is(t3)
 xx = 1
class default
 print *,103
end select
if(xx /= 1) print *,333

if(lbound(obj1,1) .ne. 1) print*,"101"
if(lbound(obj1,2) .ne. 1) print*,"102"
if(lbound(obj1,3) .ne. 1) print*,"103"
if(ubound(obj1,1) .ne. 2) print*,"104"
if(ubound(obj1,2) .ne. 3) print*,"105"
if(ubound(obj1,3) .ne. 4) print*,"106"

if(lbound(obj3,1) .ne. 1) print*,"107"
if(lbound(obj3,2) .ne. 1) print*,"108"
if(lbound(obj3,3) .ne. 1) print*,"109"
if(ubound(obj3,1) .ne. 2) print*,"110"
if(ubound(obj3,2) .ne. 3) print*,"111"
if(ubound(obj3,3) .ne. 4) print*,"112"

if(size(obj1) /= 24) print *,113
if(size(obj2) /= 24) print *,114
if(size(obj3) /= 24) print *,115
print *,"Pass"
contains 
 subroutine sub(d1,d2,d3,dd)
   class(t1), allocatable :: d3(:,:,:)
   class(t3), allocatable :: d1(:,:,:)
   class(t1),allocatable :: d2(:,:,:)
   class(t3), pointer :: dd(:,:,:)

   Allocate(dd(2,3,4))

   allocate(d1,d2,d3,source = dd)

 end subroutine

end
