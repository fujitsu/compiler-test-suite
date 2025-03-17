function fun(a) result(rr)
 logical::a(:)
 logical::rr(size(a))
 rr = .not. a(1)
end function

subroutine sub(n)

 interface
  function fun(a) result(rr)
   logical::a(:)
   logical::rr(size(a))
  end function
 end interface

 logical::a(n),b(n)
 a(1)= .false.
 b=fun(a)

 if ( b(10) ) then
  print *,'pass'
 else
  print *,'ng'
  print *,b
 endif
  
end subroutine

 call sub(10)
end
