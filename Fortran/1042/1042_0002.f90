module mdef
  contains
function fun(a) result(rr)
 integer::a(:)
 integer::rr(size(a))
 rr = a(1) + 1
end function
end module

subroutine sub(n)

 use mdef
 type tdef
  integer,allocatable,dimension(:)::a,b
 end type

 type(tdef)::tt
 allocate(tt%a(n))
 allocate(tt%b(n))
 tt%a(1)=10
 tt%b=fun(tt%a)

 if ( tt%b(10) == 11 ) then
  print *,'pass'
 else
  print *,'ng'
  print *,tt%b
 endif
  
end subroutine

 call sub(10)
end
