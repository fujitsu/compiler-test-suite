subroutine s1
type b 
  integer::bbb
end type

type x0
  integer::x01
end type
type,extends(x0)::x1
  integer::x11
end type
type,extends(x1)::x2
  class(b),allocatable::x21
end type

  class(b),allocatable::z  
class(* ),pointer:: a0(:)
class(* ),pointer:: a1(:)

allocate(x2:: a1(2) )
select type (a1)
type is(x2)
a1(1)%x01=0
a1(1)%x11=0
a1(2)%x01=0
a1(2)%x11=0
end select
allocate( a0, mold=a1 )

k=0
select type (a0)
type is(x2)
  k=1
  if (allocated(a0(1)%x21)) print *,401
  if (allocated(a0(2)%x21)) print *,402
  if (.not.same_type_as(z,a0(1)%x21)) print *,501
  if (.not.same_type_as(z,a0(2)%x21)) print *,502
end select
if (k/=1) print *,401
!
end
call s1
print *,'sngg112t : pass'
end
