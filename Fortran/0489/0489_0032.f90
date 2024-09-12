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
     class(y):: c


     k=0
     select type(c)
       typeis(y)
         k=1
         if (c%y1/=2) print *,102
     if (allocated(c%y2)) print *,202
     end select
     m=0
     select type(c)
       typeis(z)
         m=1
         if (c%y1/=2) print *,402
     if (allocated(c%y2)) print *,402
         if (c%z1/=3) print *,103
     if (allocated(c%z2)) print *,203
     end select
   end subroutine
end
subroutine ss
use m1
  type(x):: xv,xf
  type(y):: yv,yf
  type(z):: zv,zf
  n=1
  xv=x(n)
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
end
function xf(n)
use m1
 type (x):: xf
 xf= x(n)
end
function yf(n)
use m1
 type (y):: yf
 yf= y(n,y1=n+1)
end
function zf(n)
use m1
 type (z):: zf
 zf= z(n,y1=n+1,z1=n+2)
end
call ss
print *,'pass'
end

