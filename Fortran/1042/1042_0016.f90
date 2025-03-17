module mdef
type tdef
integer::x
type(tdef),pointer::p
end type
contains
function fun(a) result(rr)
 type(tdef)::a(:)
 type(tdef)::rr(size(a))
 rr%x = a(1)%x + 1
end function
end module



use mdef
type(tdef),target::tt(5)
type(tdef),pointer::tp
integer::s=0
tp => tt(5)
tt%x=(/1,2,3,4,5/)

tt(5)%p => tt(4)
tt(4)%p => tt(3)
tt(3)%p => tt(2)
tt(2)%p => tt(1)
tt(1)%p => NULL()

do while(associated(tp%p) )
  s = s + tp%x
  tp = tp%p
end do
s = s + tp%x

 tt=fun(tt)

if ( s == 15 .and. sum(tt%x) == 10 ) then
  print *,'pass'
else
  print *,'ng'
  print *,s
  print *,tt%x
endif
end
