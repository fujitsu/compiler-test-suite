 call s1
 print *,'pass'
 end
 module m1
   type c
    integer*1 ::c1=1
   end type
   interface operator(/=)
     module procedure x
   end interface
   contains
    function x(x1,x2)
    logical x
    type(c),intent(in)::x1
    integer,intent(in)::x2
    x=x1%c1/=x2
   end function
end
  function cs1f()
  use m1
  type(c)::cs1f
  end
 subroutine s1
  use m1
  type(c)::cs1f
  do kk=1,3
  if (cs1f()/=1)write(6,*) "NG"
  end do
end
