function fun(a) result(rr)
 complex::a(:)
 complex::rr(size(a))
 rr = a(1) + cmplx(1,1)
end function

subroutine sub(n)

 interface
  function fun(a) result(rr)
   complex::a(:)
   complex::rr(size(a))
  end function
 end interface

 type tdef
  complex,allocatable,dimension(:)::a,b
 end type

 type(tdef)::tt
 allocate(tt%a(n))
 allocate(tt%b(n))
 tt%a(1)=cmplx(10,10)
 tt%b=fun(tt%a)

 if ( tt%b(10) == cmplx(11,11) ) then
  print *,'pass'
 else
  print *,'ng'
  print *,tt%b
 endif
  
end subroutine

 call sub(10)
end
