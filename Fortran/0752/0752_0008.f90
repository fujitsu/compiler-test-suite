module mod
private
public::v
 type x
   integer:: x1
   contains
     procedure:: y
     generic :: yy=>y
  end type
  type (x):: v
  contains
   subroutine y(yv)
    class(x):: yv
   end subroutine
end
subroutine s1
use mod
call v%yy()
call v%y()
end
call s1
print *,'pass'
end