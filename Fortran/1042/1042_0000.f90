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

 integer::a(n),b(n)
 a(1)=10
 b=fun(a)

 if ( b(10) == 11 ) then
  print *,'pass'
 else
  print *,'ng'
  print *,b
 endif
  
end subroutine

 call sub(10)
end
