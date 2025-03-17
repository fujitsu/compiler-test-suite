subroutine sub(n)

 integer::z(n),a(n),b(n),c(n)
 a(1)=10
 z(2)=20
 c(1)=0
 b=fun(z,a,c)

 if ( b(10) == 31 ) then
  print *,'pass'
 else
  print *,'ng'
  print *,b
 endif
contains  
function fun(z,a,c) result(rr)
 integer::z(:),a(:),c(:)
 integer::rr(size(b))
 rr = a(1) + 1 + z(2) + c(1)
end function
end subroutine

 call sub(10)
end
