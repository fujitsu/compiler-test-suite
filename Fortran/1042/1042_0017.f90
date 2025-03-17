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

 complex::a(n),b(n)
 a(1)=cmplx(10,10)
 b=fun(a)

 if ( b(10) == cmplx(11,11) ) then
  print *,'pass'
 else
  print *,'ng'
  print *,b
 endif
  
end subroutine

 call sub(10)
end
