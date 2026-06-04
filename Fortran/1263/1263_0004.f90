 type x
   integer:: x1
 end type
 type,extends(x):: y
    integer:: y1
 end type
 class(x),allocatable::a(:,:)

 type(x)::obj
 obj%x1 = 10
 call sub(obj)

 contains
 subroutine sub(d1)
 class(x)::d1
 allocate(y::a(2:3,3:5))

 a(2,:)%x1 = 11
 a(3,:)%x1 = 12

 a = d1

 d1%x1 = 21
 k=0
 select type( a )
   type is( x )
    k=1
    if (size(a) /= 6) print*,101, size(a)
    if (lbound(a,dim=1)/=2) print *,4101, lbound(a,dim=1)
    if (lbound(a,dim=2)/=3) print *,4102, lbound(a,dim=2)
    if (ubound(a,dim=1)/=3) print *,4103, ubound(a,dim=1)
    if (ubound(a,dim=2)/=5) print *,4104, ubound(a,dim=2)
    if (any(a(2,:)%x1 /= 10)) print *,4105, a(2,:)%x1
    if (any(a(3,:)%x1 /= 10)) print *,4106, a(3,:)%x1
 end select
 if (k/=1) print *,'Error',4103
 print *,'PASS'
 end subroutine
 end
