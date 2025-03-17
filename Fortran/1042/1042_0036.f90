
subroutine sub(n)

 integer::a(n),b(n)
 a(1)=10
 b=fun(a)

 if ( b(10) == 11 ) then
  print *,'pass'
 else
  print *,'ng'
  print *,b
 endif
  
contains
function fun(a) result(rr)
 integer::a(:)
 integer::rr(size(b))
 rr = a(1) + 1
end function
end subroutine

 call sub(10)
end
