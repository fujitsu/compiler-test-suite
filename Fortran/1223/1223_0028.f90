subroutine s1
type b
  integer::b01  
end type
type x0
  integer::x01
  class(b),pointer    ::x02
end type
type,extends(x0)::x1
  integer::x11
  class(b),pointer    ::x12
  integer::x13
end type
type,extends(x1)::x2
  integer::x21
  class(b),pointer    ::x22
end type

  class(b),allocatable::g  
class(* ),pointer:: a0(:)
class(* ),pointer:: a1(:)

allocate(x2:: a1(2) )
allocate( a0, mold=a1 )

k=0
select type (a0)
type is(x2)
  k=1
end select
if (k/=1) print *,401
!
end
call ss
call s1
print *,'sngg122t : pass'
end
subroutine ss
integer,allocatable::x(:)
allocate(x(100))
x=-1
write(1,*) x
end
