function fun(a) result(rr)
 character*4::a(:)
 character*4::rr(size(a))
 rr = a(1)(2:3)
end function

subroutine sub(n)

 interface
  function fun(a) result(rr)
   character*4::a(:)
   character*4::rr(size(a))
  end function
 end interface

 character*4::a(n),b(n)
 a(1)='1234'
 b=fun(a)

 if ( b(10) == '23' ) then
  print *,'pass'
 else
  print *,'ng'
  print *,b
 endif
  
end subroutine

 call sub(10)
end
