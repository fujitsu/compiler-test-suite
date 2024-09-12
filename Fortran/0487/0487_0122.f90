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
     class(y):: c(:)
     if (any(c%x1/=1)) print *,101
     if (allocated(c(1)%x2)) print *,201
     k=0
     select type(c)
       typeis(y)
         k=1
         if (any(c%y1/=2)) print *,102
     if (allocated(c(1)%y2)) print *,202
     end select
     m=0
     select type(c)
       typeis(z)
         m=1
         if (any(c%y1/=2)) print *,402
     if (allocated(c(1)%y2)) print *,402
         if (any(c%z1/=3)) print *,103
     if (allocated(c(1)%z2)) print *,203
     end select
   end subroutine
end
subroutine ss
use m1
  type(x):: xv
  type(y):: yv
  type(z):: zv
  n=1
  xv=x(n)
  yv= y(n,y1=n+1) 
  call s( [yv] )
  if(k/=1) print *,401
  call s( [y(n,y1=n+1)] )
  if(k/=1) print *,402
  zv= z(n,y1=n+1,z1=n+2) 
  call s( [zv ])
  if(k/=0) print *,501
  if(m/=1) print *,502
  call s( [z(n,y1=n+1,z1=n+2)] )
  if(k/=0) print *,512
  if(m/=1) print *,522
end
call ss
print *,'pass'
end
