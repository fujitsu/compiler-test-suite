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
     class(x):: c(:)
     if (c(1)%x1/=1) print *,101
     if (c(2)%x1/=1) print *,111
     if (allocated(c(1)%x2)) print *,201
     if (allocated(c(2)%x2)) print *,221
     k=0
     select type(c)
       typeis(y)
         k=1
         if (c(1)%y1/=2) print *,102
         if (c(2)%y1/=2) print *,112
     if (allocated(c(1)%y2)) print *,202
     if (allocated(c(2)%y2)) print *,232
     end select
   end subroutine
end
subroutine ss
use m1
  type(x):: xv
  type(y):: yv
  n=1
  xv=x(n)
  call s( [xv,xv] )
  if(k/=0) print *,301
  call s( [x(n),x(n)] )
  if(k/=0) print *,302
  yv= y(n,y1=n+1) 
  call s( [yv,yv] )
  if(k/=1) print *,401
  call s( [y(n,y1=n+1),y(n,y1=n+1)] )
  if(k/=1) print *,402
end
call ss
print *,'pass'
end
