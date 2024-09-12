module m1
   type x
     integer::x1
     contains
      procedure,nopass::s
   end type
   type,extends(x):: y
     integer::x2
     contains
      procedure,nopass::ss
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
   subroutine ss(c)
     class(y):: c
     if (c%x1/=1) print *,103
     if (c%x2/=2) print *,104
   end subroutine
end
subroutine s1
use m1
type (x):: z
type (y):: q
k=1
  call s( x(k) )
  call s( y(k,2) )
  call s( x(k) )
  call ss( y(k,2) )
z=x(k)
  call s( z    )
  call s( z    )
q=y(k,2)
  call s ( q    )
  call ss( q    )
end
call s1
print *,'pass'
end
