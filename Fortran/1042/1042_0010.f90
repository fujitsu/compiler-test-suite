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
  function fun(a,n) result(rr)
   integer,intent(in)::a(:)
   integer,intent(inout)::n
   integer::rr(size(a))
  end function
 end interface

 type tdef
  integer,allocatable,dimension(:)::a,b
 end type

 type(tdef)::tt
 integer::nn
 nn = 0
 allocate(tt%a(n))
 allocate(tt%b(n))
 tt%a(1)=10
 tt%b=fun(tt%a,nn)

 if ( tt%b(10) == 34 ) then
  print *,'pass'
 else
  print *,'ng'
  print *,tt%b
 endif
  
end subroutine

 call sub(10)
end
