subroutine s1(k)
save
integer,pointer::p1
type x
  integer::x1
  integer,pointer::p
end type
type(x),pointer::p2
select case(k)
case (0)
  nullify(p1,p2)
case (1)
  allocate(p1,p2)
case (2)
  allocate(p2%p)
case (3)
  p2%x1=1
  p2%p=1
  p1=1
case (4)
  if (p2%x1/=1)print *,101
  if (p2%p/=1)print *,102
  if (p1/=1)print *,103
end select
end
call s1(0)
call s1(1)
call s1(2)
call s1(3)
call s1(4)
print *,'pass'
end
