function fun(a) result(rr)
 integer::a(:)
 integer,dimension(size(a))::rr,rr2
 rr = a(1) + 1
 return
entry ent(a) result(rr2)
 rr2 = a(1) + 2
end function

subroutine sub(n)

interface
function fun(a) result(rr)
 integer::a(:)
 integer::rr(size(a))
end function
function ent(b) result(rr2)
 integer::b(:)
 integer::rr2(size(b))
end function
end interface

 type tdef
  integer,allocatable,dimension(:)::a,b
 end type

 type(tdef)::tt
 allocate(tt%a(n))
 allocate(tt%b(n))
 tt%a(1)=10
 tt%b=ent(tt%a)

 if ( tt%b(10) == 12 ) then
  print *,'pass'
 else
  print *,'ng'
  print *,tt%b
 endif
  
end subroutine

 call sub(10)
end
