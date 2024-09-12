module m1
 type x(k)
   integer,kind:: k
   integer:: a(k)
 end type
 type y
   integer:: a(2)
 end type
  contains
function f1() 
 type( x(2) ) :: v1
 type( y    ) :: v2
 v1= x(2)( [1,2] )
 v2= y   ( [1,2] )
 if (v1%a(2)/=2) print *,101
 if (v2%a(2)/=2) print *,102
 f1=1.0
end function
function f2() 
 type( x(2) ) :: f2
 f2= x(2)   ( [1,2] )
 if (f2%a(2)/=2) print *,202
end function
function f3() 
 type( y    ) :: f3
 f3= y   ( [1,2] )
 if (f3%a(2)/=2) print *,301
end function
 type( x(2) ) function f4() 
 f4= x(2)( [1,2] )
 if (f4%a(2)/=2) print *,402
end function
 type( y    ) function f5() 
 f5= y   ( [1,2] )
 if (f5%a(2)/=2) print *,501
end function
end
subroutine s1
use m1
if (f1()/=1.0) print *,101
call c2(f2(),1)
call c1(f3(),2)
call c2(f4(),3)
call c1(f5(),4)
contains
subroutine c1(v,k)
 type( y    ) :: v
 if (v%a(2)/=2) print *,1402,k
end subroutine
subroutine c2(v,k)
 type( x(2)    ) :: v
 if (v%a(2)/=2) print *,2402,k
end subroutine
end
call s1
print *,'pass'
end
