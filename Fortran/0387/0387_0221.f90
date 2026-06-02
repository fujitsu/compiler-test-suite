interface
  subroutine s1(k)
   interface
     subroutine sub()
     end subroutine
   end interface
  end subroutine
  subroutine sub()
  end subroutine
  function f() result(k)
   integer :: k
  end function
end interface
 procedure (sub),pointer::k
 procedure (f),pointer::k1
k=>sub
k1=>f
call k()
call s1(i)
if (i.ne.1) print *,'fail'
print *,'pass'
end
 subroutine s1(f1)
   integer :: f1
   f1=1
 end subroutine
 subroutine sub()
 end subroutine
 function f() result(k)
  k=1
 end function
