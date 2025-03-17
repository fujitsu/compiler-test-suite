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

 integer::z(n),a(n),b(10),c(n)
 a(1)=10
 z(2)=20
 c(1)=0
 b=fun(z,a(1:20:2),c)

 if ( b(10) == 31 ) then
  print *,'pass'
 else
  print *,'ng'
  print *,b
 endif
  
end subroutine

 call sub(20)
end
