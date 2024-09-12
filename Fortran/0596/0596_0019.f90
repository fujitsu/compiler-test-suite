module m1
type t1
integer :: ii
contains
final :: f1
end type

type t2
type(t1),allocatable :: t1_alc
contains
final :: f2
end type

type t3
integer,allocatable :: alc
type(t2) :: t2_cmp
contains
final :: f3
end type

contains
subroutine f1(d1)
type(t1) :: d1
print*,"final f1",d1%ii
end

subroutine f2(d1)
type(t2) :: d1
print*,"final f2",d1%t1_alc%ii
end

subroutine f3(d1)
type(t3) :: d1
print*,"final f3",d1%t2_cmp%t1_alc%ii
end
end

subroutine s1()
use m1
class(t3),allocatable :: t3_obj
allocate(t3_obj)
allocate(t3_obj%t2_cmp%t1_alc)
t3_obj%t2_cmp%t1_alc%ii = 20
end

interface
subroutine s1()
end subroutine
end interface
call s1()
end
