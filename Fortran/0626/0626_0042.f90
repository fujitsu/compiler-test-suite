subroutine s1
type bb
  integer::x1
end type
type,extends(bb)::ee
  integer::x2
end type
type t
class(bb) ,pointer :: ip
end type
type b
type(t)  :: i
end type
type(b) :: ss
class(bb) ,pointer :: tmp
ss=f(1)
if (ss%i%ip%x1/=1)print *,101
ss=f(2)
if (ss%i%ip%x1/=2)print *,102
tmp=>ss%i%ip
select type(tmp)
class is(ee)
if (tmp%x2/=2)print *,103
end select
contains
function   f(k) result(r)
type(b) :: r
class(bb) ,pointer :: tmp
select case(k)
case (1)
allocate(bb::r%i%ip)
r%i%ip%x1=1
case (2)
allocate(ee::r%i%ip)
r%i%ip%x1=2
tmp=>r%i%ip
select type(tmp)
class is(ee)
tmp%x2=2
end select
end select
end function 
end
call s1
print *,'pass'
end
