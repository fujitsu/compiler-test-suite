function fun(a) result(rr)
 integer::a(:)
 integer::rr(size(a),size(a))
 rr = a(1) + 1
end function

subroutine sub(n)

 interface
  function fun(a) result(rr)
   integer::a(:)
   integer::rr(size(a),size(a))
  end function
 end interface

 integer::a(n),b(n,n)
 a(1)=10
 b=fun(a)

 if ( b(10,10) == 11 ) then
  print *,'pass'
 else
  print *,'ng'
  print *,b
 endif
  
end subroutine

 call sub(10)
end
