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

 integer::z(n),a(n),b(n),c(n)
 b=fun(z,a,c)

  print *,'pass'
  
end subroutine

 call sub(0)
end
