function fun(a) result(rr)
 integer,allocatable::a(:)
 integer::rr(size(a))
 a(1)=10
 a(3)=a(1) + 1
 rr = a(1) + 1 + a(3)
end function

subroutine sub(n)

 interface
  function fun(a) result(rr)
 integer,allocatable::a(:)
   integer::rr(size(a))
  end function
 end interface

 integer,allocatable::a(:)
 integer,allocatable::b(:)
 allocate(b(n))
 allocate(a(n))
 b=fun(a)

 if ( b(10) == 22 ) then
  print *,'pass'
 else
  print *,'ng'
  print *,b
 endif
  
end subroutine

 call sub(10)
end
