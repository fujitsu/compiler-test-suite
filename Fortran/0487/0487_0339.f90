module m1
   type x
     integer::x1
     contains
      procedure,nopass::s
   end type
   type,extends(x):: y
     integer::x2
   end type
   type,extends(y):: z
     integer::x3
   end type
 type(x):: v
   contains
   subroutine s(c)
     class(x):: c
     if (c%x1/=1) print *,101
     select type(c)
       typeis(y)
         if (c%x2/=2) print *,102
     end select
   end subroutine
end
subroutine ss
use m1
  call v%s( y(1,2) )
  call v%s( z(1,2,3) )
end
call ss
print *,'pass'
end
