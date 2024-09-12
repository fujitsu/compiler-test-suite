subroutine s1
type bb
  integer::x1
end type
type,extends(bb)::ee
  integer::x2
end type
type t
class(*) ,pointer :: ip
end type
type b
type(t)  :: i
end type
type(b) :: ss
class(*) ,pointer :: tmp
ss=f(1)
tmp=>ss%i%ip
select type(tmp)
class is(bb)
if (tmp%x1/=1)print *,101
class default
 print *,111
end select
ss=f(2)
tmp=>ss%i%ip
select type(tmp)
class is(ee)
if (tmp%x1/=2)print *,102
if (tmp%x2/=2)print *,103
class default
 print *,221
end select
contains
function   f(k) result(r)
type(b) :: r
class(*) ,pointer :: tmp
select case(k)
case (1)
allocate(bb::r%i%ip)
tmp=>r%i%ip
select type(tmp)
class is(bb)
tmp%x1=1
end select
case (2)
allocate(ee::r%i%ip)
tmp=>r%i%ip
select type(tmp)
class is(ee)
tmp%x1=2
tmp%x2=2
class default
print *,201
end select
end select
end function 
end
call s1
print *,'pass'
end
