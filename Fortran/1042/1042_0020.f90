function fun(n,a) result(rr)
 integer,optional::a(:)
 integer::rr(n)
 if(present(a)) then
   rr = a(1) + 1 +n
 else
   rr = n + 1
 endif
end function

subroutine sub(n)

 interface
  function fun(n,a) result(rr)
   integer,optional::a(:)
   integer::rr(n)
  end function
 end interface

 integer::a(n),b(n)
 a(1)=10
 b=fun(n,a)
 b=fun(n=n)

 if ( b(10) == 11 ) then
  print *,'pass'
 else
  print *,'ng'
  print *,b
 endif
  
end subroutine

 call sub(10)
end
