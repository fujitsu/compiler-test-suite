function fun(z,a,c) result(rr)
 integer::z(:),a(:),c(:)
 integer::rr(size(a))
 rr = a(1) + 1 + z(2) + c(1)
end function

subroutine sub(n)

 interface
  function fun(z,a,c) result(rr)
   integer::z(:),a(:),c(:)
   integer::rr(size(a))
  end function
 end interface

 integer::z(n),a(n),b(10),v(10),c(10)
 a(1)=10
 z(2)=20
 c(1)=0
 v=(/1,3,5,7,9,11,13,15,17,19/)
 b=fun(z,a(v),c)

 if ( b(10) == 31 ) then
  print *,'pass'
 else
  print *,'ng'
  print *,b
 endif
  
end subroutine

 call sub(20)
end
