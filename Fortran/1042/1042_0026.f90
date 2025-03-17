function fun(a) result(rr)
 integer::a(:,:)
 integer::rr(size(a,1),size(a,2))
 rr = a(1,1) + 1
end function

subroutine sub(n)

 interface
  function fun(a) result(rr)
   integer::a(:,:)
   integer::rr(size(a,1),size(a,2))
  end function
 end interface

 integer::a(n,n),b(n,n)
 a(1,1)=10
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
