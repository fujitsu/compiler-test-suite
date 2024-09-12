module m1
 interface gen
   procedure :: s1,s2
 end interface
contains
subroutine s1(d1,d2)
external::d1
procedure(arr_fun):: d2
print*,"Resolved by s1"
end subroutine
subroutine s2(d3,d4)
procedure(arr_fun):: d3
external::d4
print*,"Resolved by s2"
end subroutine
 function fun(d1) result(r)
 integer:: r
 r=d1
 end function
 function arr_fun(d1) result(r)
 integer:: r(2)
 r=d1
 end function
 end
 use m1
 call gen(arr_fun,fun )
 print *,'pass'
 end
