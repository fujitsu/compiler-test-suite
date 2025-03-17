function fun(z,a) result(rr)
 integer,optional::z(:)
 integer::a(:)
 integer::rr(size(a))
 if ( present(z) ) then
 rr = a(1) + 1 + z(1)
 else
   rr = a(1) + 1
 endif
end function

subroutine sub(n)

 interface
  function fun(z,a) result(rr)
   integer,optional::z(:)
   integer::a(:)
   integer::rr(size(a))
  end function
 end interface

 type tdef
  integer,allocatable,dimension(:)::a,b
 end type

 type(tdef)::tt
 allocate(tt%a(n))
 allocate(tt%b(n))
 tt%a(1)=10
 tt%b=fun(a=tt%a)

 if ( tt%b(10) == 11 ) then
  print *,'pass'
 else
  print *,'ng'
  print *,tt%b
 endif
  
end subroutine

 call sub(10)
end
