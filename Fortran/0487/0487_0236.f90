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
   end subroutine
end
use m1
  k=1
  call s( y(k,2) )
print *,'pass'
end
