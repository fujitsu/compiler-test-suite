module m1
   type x
     integer::x1
     contains
      procedure,nopass::s
   end type
   type,extends(x):: y
     integer::x2
     contains
      procedure,nopass::s
   end type
 type(x):: v
 type(y):: w
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
type (x):: z
type (y):: q
k=1
  call v%s( x(k) )
  call v%s( y(k,2) )
  call w%s( x(k) )
  call w%s( y(k,2) )
z=x(k)
  call v%s( z    )
q=y(k,2)
  call w%s( q    )
end
call ss
print *,'pass'
end
