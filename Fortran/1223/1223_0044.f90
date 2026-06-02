subroutine s1
type b
  integer::b01  
end type
type x0
  integer::x01
  class(b),pointer::x02=>null()
end type
type,extends(x0)::x1
  integer::x11
  class(b),pointer::x12=>null()
  integer::x13
end type
type,extends(x1)::x2
  integer::x21
  class(b),pointer::x22=>null()
end type

  class(b),allocatable::g  
class(x0),pointer:: a0(:)
class(x1),pointer:: a1(:)

allocate(x2:: a1(2) )
allocate( a0, mold=a1 )

k=0
select type (a0)
type is(x2)
  k=1
  if (associated(a0(1)%x02) )print *,301
  if (associated(a0(2)%x02) )print *,302
  if (associated(a0(1)%x12) )print *,311
  if (associated(a0(2)%x12) )print *,312
  if (associated(a0(1)%x22) )print *,321
  if (associated(a0(2)%x22) )print *,322
  if (.not.same_type_as(g,a0(1)%x02)) print *,501
  if (.not.same_type_as(g,a0(2)%x02)) print *,502
  if (.not.same_type_as(g,a0(1)%x12)) print *,511
  if (.not.same_type_as(g,a0(2)%x12)) print *,512
  if (.not.same_type_as(g,a0(1)%x22)) print *,521
  if (.not.same_type_as(g,a0(2)%x22)) print *,522
end select
if (k/=1) print *,401
!
end
call ss
call s1
print *,'sngg140t : pass'
end
subroutine ss
integer,allocatable::x(:)
allocate(x(100))
x=-1
write(1,*) x
end
