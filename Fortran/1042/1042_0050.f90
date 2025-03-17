function fun(a) result(rr)
 integer::a(:)
 integer::rr(size(a))
 rr = a(1) + 1
end function

function fun0(a) result(rr)
interface
function fun(a) result(rr)
 integer::a(:)
 integer::rr(size(a))
end function
end interface
 integer::a(:)
 integer::rr(size(a))
 rr = fun(a)
end function

subroutine sub(n)

 interface
  function fun0(a) result(rr)
   integer::a(:)
   integer::rr(size(a))
  end function
 end interface

 integer::a(n),b(n)
 a(1)=10
 b=fun0(a)

 if ( b(10) == 11 ) then
  print *,'pass'
 else
  print *,'ng'
  print *,b
 endif
  
end subroutine

 call sub(10)
end
