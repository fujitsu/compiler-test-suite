 type x
   integer:: x1
 end type
 type,extends(x):: y
    integer:: y1
 end type
 class(x),allocatable::a(:)

 type(x)::xs=x(1)

 allocate(y::a(2:3))
 a(2)%x1 = 11
 a(3)%x1 = 12
 a= xs
 xs%x1 = 21
 k=0
 select type( a )
   type is( x )
    k=1
    if (size(a) /= 2) print*,101, size(a)
    if (lbound(a,dim=1)/=2) print *,4102, lbound(a,dim=1)
    if (ubound(a,dim=1)/=3) print *,4103, ubound(a,dim=1)
    if (a(2)%x1/=1) print *,4101, a(2)%x1
    if (a(3)%x1/=1) print *,4111, a(3)%x1
 end select
 if (k/=1) print *,'Error',4103
 print *,'PASS'
 end
