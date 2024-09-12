module m1
   type x
     integer::x1
     integer,allocatable::x2(:)
   end type
   type,extends(x):: y
     integer::y1
     integer,allocatable::y2(:)
   end type
   type,extends(y):: z
     integer::z1
     integer,allocatable::z2(:)
   end type
   integer::k,m
   contains
   subroutine s(c)
     class(x):: c(:)
     if (c(1)%x1/=1) print *,101
     if (allocated(c(1)%x2)) print *,201
     k=0
     select type(c)
       typeis(y)
         k=1
         if (c(1)%y1/=2) print *,102
     if (allocated(c(1)%y2)) print *,202
     end select
     m=0
     select type(c)
       typeis(z)
         m=1
         if (c(1)%y1/=2) print *,402
     if (allocated(c(1)%y2)) print *,402
         if (c(1)%z1/=3) print *,103
     if (allocated(c(1)%z2)) print *,203
     end select
   end subroutine
end
subroutine ss
use m1
  type(x):: xv(1)
  type(y):: yv(1)
  type(z):: zv(1)
  n=1
  xv=x(n)
  call s( xv )
  if(k/=0) print *,301
  call s( [xf(n)] )
  if(k/=0) print *,302
  yv= y(n,y1=n+1) 
  call s( yv )
  if(k/=1) print *,401
  call s( yf(n) )
  if(k/=1) print *,402
  zv= z(n,y1=n+1,z1=n+2) 
  call s( zv )
  if(k/=0) print *,501
  if(m/=1) print *,502
  call s( zf(n) )
  if(k/=0) print *,512
  if(m/=1) print *,522
contains
function xf(n)
use m1
 type (x):: xf(1)
 xf= x(n)
end function
function yf(n)
use m1
 type (y):: yf(1)
 yf= y(n,y1=n+1)
end function
function zf(n)
use m1
 type (z):: zf(1)
 zf= z(n,y1=n+1,z1=n+2)
end function
end
call ss
print *,'pass'
end
