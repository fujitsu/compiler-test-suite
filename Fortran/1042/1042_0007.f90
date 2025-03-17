recursive function fun(a,n) result(rr)
 integer,intent(in)::a(:)
 integer,intent(inout)::n
 integer::rr(size(a))
 n = n + 1
 if ( n > 3 ) then
   rr = 1
   return
 else 
   rr = a(1) + 1 + fun(a,n)
 endif
end function

subroutine sub(n)

 interface
  recursive function fun(a,n) result(rr)
   integer,intent(in)::a(:)
   integer,intent(inout)::n
   integer::rr(size(a))
  end function
 end interface

 integer::a(n),b(n),nn
 a(1)=10
 nn=0
 b=fun(a,nn)

 if ( b(10) == 34 ) then
  print *,'pass'
 else
  print *,'ng'
  print *,b
 endif
  
end subroutine

 call sub(10)
end
