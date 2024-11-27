subroutine sub
type st
 type(st),pointer::next
 character(len=1,kind=1),allocatable,dimension(:):: pa1
end type
type (st),pointer:: st1
type (st)        :: s
allocate(st1)
allocate(st1%next)
if (allocated(st1%next%pa1))write(6,*) "NG"
s=st(null(),(/(char(i),i=1,20)/))
st1%next = s
if (associated(st1%next%next))write(6,*) "NG"
if (any(st1%next%pa1/=(/(char(i),i=1,20)/)))write(6,*) "NG"
end
call sub
print *,'pass'
end
