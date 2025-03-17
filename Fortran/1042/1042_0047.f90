function fun(a) result(rr)
 real(16)::a(:)
 real(16)::rr(size(a))
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
   real(16)::a(:)
   real(16)::rr(size(a))
  end function
 end interface
 integer(8)::n
 real(16)::a(n),b(n)
 a(1)=10
 b=fun(a)

 if ( abs(b(10) - 11) < 0.0001 ) then
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
   real(16)::a(:)
   real(16)::rr(size(a))
  end function
 end interface
integer(8)::n
real(16)::a(n),b(n)
 a(1)=10
 b=fun(a)
end subroutine

end
