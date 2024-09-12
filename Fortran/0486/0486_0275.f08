module m1
 interface
  function f(a)
   integer:: f, a
  end function
 end interface
contains
subroutine ss(pp)
 procedure(f),pointer,intent(in)::pp
end subroutine
end
subroutine s1
 use m1
 call s2(f)
 contains
 subroutine s2(ff)
  procedure(f)::ff
  call ss(ff)      
 end subroutine
end
call s1
print *,'pass'
end
function f(a)
integer:: f,a
f=a
end function
