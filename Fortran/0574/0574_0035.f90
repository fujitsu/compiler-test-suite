module m1
 interface gen
   procedure :: s1,s2
 end interface
contains
subroutine s1(f)
interface
integer function f(d1)
dimension f(2)
 end function
end interface
 if (any(f(1.0)/=1)) print *,101
end subroutine
 subroutine s2(f)
 interface
 integer function f(d1)
 end function
 end interface
 if (f(1.0)/=1) print *,102
 end subroutine

 subroutine s()
 interface
 integer function afun(d1)
 end function
 function afun2(d1)
 integer afun2(2)
 end function
 end interface
 call gen( afun2)
 call gen( afun )
 end subroutine
 end

 use m1
 call s()
 print *,'pass'
 end

 integer function afun(d1)
 afun=d1
 end function
 function afun2(d1)
 integer afun2(2)
 afun2=d1
 end function
