module m1
   type x
     integer::x1
   end type
   type,extends(x):: y
     integer::x2
   end type
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
k=1
  call s( x(k) )
  call s( y(k,2) )
end
call ss
print *,'pass'
end
