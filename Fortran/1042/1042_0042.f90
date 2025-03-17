function fun(a) result(rr)
 integer,target::a(:)
 integer,target::rr(size(a))
 rr = a(1) + 1
end function

subroutine sub(n)

 interface
  function fun(a) result(rr)
   integer,target::a(:)
   integer,target::rr(size(a))
  end function
 end interface

 integer::a(n),b(n/2),v(10)
 a(1)=10
v=(/1,3,5,7,9,11,13,15,17,19/)
 b=fun(a(v))

 if ( b(10) == 11 ) then
  print *,'pass'
 else
  print *,'ng'
  print *,b
 endif
  
end subroutine

 call sub(20)
end
