function fun(a) result(rr)
 integer(8)::a(:)
 integer(8)::rr(size(a))
 rr = a(1) + 1
end function

integer(8)::n
n=10
 call sub(n)
 call sub2(n)
contains
subroutine sub(n)

 interface
  function fun(a) result(rr)
   integer(8)::a(:)
   integer(8)::rr(size(a))
  end function
 end interface
 integer(8)::n
 integer(8)::a(n),b(n)
 a(1)=10
 b=fun(a)

 if ( b(10) == 11 ) then
  print *,'pass'
 else
  print *,'ng'
  print *,b
 endif
  return
end subroutine
subroutine sub2(n)
 interface
  function fun(a) result(rr)
   integer(8)::a(:)
   integer(8)::rr(size(a))
  end function
 end interface
integer(8)::n
integer(8)::a(n),b(n)
 a(1)=10
 b=fun(a)
end subroutine

end
