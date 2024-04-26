module mod
 type x
   integer:: x1
   contains
     procedure:: y
  end type
  type (x):: v
  contains
   subroutine y(yv)
    class(x):: yv
    yv%x1=1
   end subroutine
end
subroutine s1
use mod,only:v
call v%y()
end
call s1
print *,'pass'
end
