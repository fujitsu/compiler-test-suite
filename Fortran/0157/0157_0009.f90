module mod
 type x
   integer:: x1
   contains
     procedure:: y
     procedure:: z
    generic:: operator(+)=> z
    final:: w
  end type
  type (x):: v
  contains
   subroutine w(yv)
    type(x):: yv
    yv%x1=1
   end subroutine
   subroutine y(yv)
    class(x):: yv
    yv%x1=1
   end subroutine
  function z(b1 ,b2) result(r)
    integer ::          r
    class(x),intent(in):: b1
    real   , intent(in) :: b2
    r=1
  end function
end
subroutine s1
use mod,only:v
call v%y()
end
call s1
print *,'pass'
end
