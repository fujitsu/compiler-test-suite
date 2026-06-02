subroutine s1
type b
  integer::b01  
end type
type x0
  integer::x01=1
  class(b),allocatable::x02
end type
type,extends(x0)::x1
  integer::x11=11
  class(b),allocatable::x12
  integer::x13=13
end type
type,extends(x1)::x2
  integer::x21=21
  class(b),allocatable::x22
end type

  class(b),allocatable::g  
class(x0),pointer:: a0(:),b0(:)
class(x1),pointer:: z(:)
class(x1),pointer:: a1(:),b1(:)

allocate(x2:: z (2) )
allocate( a0,a1,b0,b1, mold=z  )

k=0
select type (p=>a0)
type is(x2)
  k=1
  if (p(1)%x01/=1) print *,201,p(1)%x01
  if (p(2)%x01/=1) print *,202,p(2)%x01
  if (p(1)%x11/=11) print *,301,p(1)%x11
  if (p(2)%x11/=11) print *,302,p(2)%x11
  if (p(1)%x13/=13) print *,303,p(2)%x13
  if (p(2)%x13/=13) print *,304,p(2)%x13
  if (p(1)%x21/=21) print *,401,p(1)%x21
  if (p(2)%x21/=21) print *,402,p(2)%x21
  if (allocated(p(1)%x02) )print *,301
  if (allocated(p(2)%x02) )print *,302
  if (allocated(p(1)%x12) )print *,311
  if (allocated(p(2)%x12) )print *,312
  if (allocated(p(1)%x22) )print *,321
  if (allocated(p(2)%x22) )print *,322
  if (.not.same_type_as(g,p(1)%x02)) print *,501
  if (.not.same_type_as(g,p(2)%x02)) print *,502
  if (.not.same_type_as(g,p(1)%x12)) print *,511
  if (.not.same_type_as(g,p(2)%x12)) print *,512
  if (.not.same_type_as(g,p(1)%x22)) print *,521
  if (.not.same_type_as(g,p(2)%x22)) print *,522
end select
if (k/=1) print *,401
!
k=0
select type (p=>a1)
type is(x2)
  k=1
  if (p(1)%x01/=1) print *,201,p(1)%x01
  if (p(2)%x01/=1) print *,202,p(2)%x01
  if (p(1)%x11/=11) print *,301,p(1)%x11
  if (p(2)%x11/=11) print *,302,p(2)%x11
  if (p(1)%x13/=13) print *,303,p(2)%x13
  if (p(2)%x13/=13) print *,304,p(2)%x13
  if (p(1)%x21/=21) print *,401,p(1)%x21
  if (p(2)%x21/=21) print *,402,p(2)%x21
  if (allocated(p(1)%x02) )print *,301
  if (allocated(p(2)%x02) )print *,302
  if (allocated(p(1)%x12) )print *,311
  if (allocated(p(2)%x12) )print *,312
  if (allocated(p(1)%x22) )print *,321
  if (allocated(p(2)%x22) )print *,322
  if (.not.same_type_as(g,p(1)%x02)) print *,501
  if (.not.same_type_as(g,p(2)%x02)) print *,502
  if (.not.same_type_as(g,p(1)%x12)) print *,511
  if (.not.same_type_as(g,p(2)%x12)) print *,512
  if (.not.same_type_as(g,p(1)%x22)) print *,521
  if (.not.same_type_as(g,p(2)%x22)) print *,522
end select
if (k/=1) print *,401
!
k=0
select type (p=>b0)
type is(x2)
  k=1
  if (p(1)%x01/=1) print *,201,p(1)%x01
  if (p(2)%x01/=1) print *,202,p(2)%x01
  if (p(1)%x11/=11) print *,301,p(1)%x11
  if (p(2)%x11/=11) print *,302,p(2)%x11
  if (p(1)%x13/=13) print *,303,p(2)%x13
  if (p(2)%x13/=13) print *,304,p(2)%x13
  if (p(1)%x21/=21) print *,401,p(1)%x21
  if (p(2)%x21/=21) print *,402,p(2)%x21
  if (allocated(p(1)%x02) )print *,301
  if (allocated(p(2)%x02) )print *,302
  if (allocated(p(1)%x12) )print *,311
  if (allocated(p(2)%x12) )print *,312
  if (allocated(p(1)%x22) )print *,321
  if (allocated(p(2)%x22) )print *,322
  if (.not.same_type_as(g,p(1)%x02)) print *,501
  if (.not.same_type_as(g,p(2)%x02)) print *,502
  if (.not.same_type_as(g,p(1)%x12)) print *,511
  if (.not.same_type_as(g,p(2)%x12)) print *,512
  if (.not.same_type_as(g,p(1)%x22)) print *,521
  if (.not.same_type_as(g,p(2)%x22)) print *,522
end select
if (k/=1) print *,401
!
k=0
select type (p=>b1)
type is(x2)
  k=1
  if (p(1)%x01/=1) print *,201,p(1)%x01
  if (p(2)%x01/=1) print *,202,p(2)%x01
  if (p(1)%x11/=11) print *,301,p(1)%x11
  if (p(2)%x11/=11) print *,302,p(2)%x11
  if (p(1)%x13/=13) print *,303,p(2)%x13
  if (p(2)%x13/=13) print *,304,p(2)%x13
  if (p(1)%x21/=21) print *,401,p(1)%x21
  if (p(2)%x21/=21) print *,402,p(2)%x21
  if (allocated(p(1)%x02) )print *,301
  if (allocated(p(2)%x02) )print *,302
  if (allocated(p(1)%x12) )print *,311
  if (allocated(p(2)%x12) )print *,312
  if (allocated(p(1)%x22) )print *,321
  if (allocated(p(2)%x22) )print *,322
  if (.not.same_type_as(g,p(1)%x02)) print *,501
  if (.not.same_type_as(g,p(2)%x02)) print *,502
  if (.not.same_type_as(g,p(1)%x12)) print *,511
  if (.not.same_type_as(g,p(2)%x12)) print *,512
  if (.not.same_type_as(g,p(1)%x22)) print *,521
  if (.not.same_type_as(g,p(2)%x22)) print *,522
end select
if (k/=1) print *,401
!
end
call ss
call s1
print *,'sngg124t : pass'
end
subroutine ss
integer,allocatable::x(:)
allocate(x(100))
x=-1
write(1,*) x
end
