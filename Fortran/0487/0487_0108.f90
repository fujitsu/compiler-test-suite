module m1
   type x
     integer::x1
     integer,allocatable::x2(:)
   end type
   type,extends(x):: y
     integer::y1
     integer,allocatable::y2(:)
   end type
   integer::k
   contains
   subroutine s(c)
     class(x):: c
     if (c%x1/=1) print *,101
     if (allocated(c%x2)) print *,201
     k=0
     select type(c)
       typeis(y)
         k=1
         if (c%y1/=2) print *,102
     if (allocated(c%y2)) print *,202
     end select
   end subroutine
end
subroutine ss
use m1
  type(x):: xv
  type(y):: yv
  xv=x(1)
  call s( xv )
  if(k/=0) print *,301
  call s( x(1) )
  if(k/=0) print *,302
  yv= y(1,y1=2) 
  call s( yv )
  if(k/=1) print *,401
  call s( y(1,y1=2) )
  if(k/=1) print *,402
end
call ss
print *,'pass'
end
