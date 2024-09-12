module m1
  type x
   integer,allocatable:: x1
   integer,allocatable:: x2(:)
 end type
contains
subroutine ss
type(x):: v
   integer,allocatable:: z1
   integer,allocatable:: z2(:)

call tt( x( z1, z2 ) ,0)
call tt( x( ) ,0)
call tt( x(null() ) ,0)
call tt( x(x2=null() ) ,0)
call tt( x(x2=null(),x1=null() ) ,0)
call tt( v    ,0)
allocate(z1,z2(-2:-1),source=1)
call tt( x( z1, z2 ) ,1)
call tt( x( z1+1, z2+1 ) ,2)
end subroutine
subroutine tt(d,k)
type(x):: d
if (k==0) then
 if (allocated(d%x1)) print *,201
 if (allocated(d%x2)) print *,202
else if(k==1) then
 if (.not.allocated(d%x1)) print *,301
 if (.not.allocated(d%x2)) print *,302
 if (any(lbound(d%x2)/=-2)) print *,303
 if (any(d%x2/=1)) print *,304
 if (   (d%x1/=1)) print *,305
else
 if (.not.allocated(d%x1)) print *,401
 if (.not.allocated(d%x2)) print *,402
 if (any(lbound(d%x2)/= 1)) print *,403
 if (any(d%x2/=2)) print *,404
 if (   (d%x1/=2)) print *,405
end if
end subroutine
end
subroutine s1
use m1
call ss
end
call s1
print *,'pass'
end
