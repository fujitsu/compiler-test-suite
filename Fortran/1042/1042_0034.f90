function fun(a) result(rr)
 integer::a(:)
 integer::rr(size(a))
 rr = a(1) + 1
end function

subroutine sub(n)

 interface
  function fun(a) result(rr)
   integer::a(:)
   integer::rr(size(a))
  end function
 end interface

 integer::a(n),b(n)
 b=fun(a)

  print *,'pass'
  
end subroutine

 call sub(0)
end
