function fun(z,a,c) result(rr)
 integer,optional::z(:)
 integer::a(:),c(:)
 integer::rr(size(a))
 if ( present(z) ) then
   rr = a(1) + 1 + z(2) + c(1)
 else
   rr = a(1) + 1 + 20
 endif
end function

subroutine sub(n)

 interface
  function fun(z,a,c) result(rr)
   integer,optional::z(:)
   integer::a(:),c(:)
   integer::rr(size(a))
  end function
 end interface

 integer,target::a(n)
 integer,dimension(:),pointer::pa
 integer::z(n),b(n),c(n)
 a(1)=10
 z(2)=20
 c(1)=1
 pa=>a
 b=fun(a=pa,c=c)

 if ( b(10) == 31 ) then
  print *,'pass'
 else
  print *,'ng'
  print *,b
 endif
  
end subroutine

 call sub(10)
end
