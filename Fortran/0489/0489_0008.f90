module m1
type y
   integer:: y1=2
end type
 type x
   integer:: x1=1
   type(y),allocatable:: x2(:) 
 end type
end
subroutine s1
use m1
type(x),allocatable:: v1

allocate(v1)
allocate( v1%x2(2:3)) 
v1%x2(2:3)%y1=[2,3] 
if (v1%x1/=1) print *,101
if (any(v1%x2%y1/=[2,3])) print *,102
if (any(lbound(v1%x2)/=2)) print *,103

!$omp parallel private( v1 )
if (any(lbound(v1%x2)/=2)) print *,203
if (.not.allocated(v1%x2)) print *,204
v1%x1=2
v1%x2%y1=-1
!$omp end parallel

if (v1%x1/=1) print *,301
if (any(v1%x2%y1/=[2,3])) print *,302
if (any(lbound(v1%x2)/=2)) print *,303
v1%x1=20
v1%x2%y1=[21,22]
!$omp parallel firstprivate( v1 )
if (v1%x1/=20) print *,301
if (any(v1%x2%y1/=[21,22])) print *,302
if (any(lbound(v1%x2)/=2)) print *,303
if (.not.allocated(v1%x2)) print *,304
v1%x1=2
v1%x2%y1=-1
!$omp end parallel
if (v1%x1/=20) print *,301
if (any(v1%x2%y1/=[21,22])) print *,402
if (any(lbound(v1%x2)/=2)) print *,403
if (.not.allocated(v1%x2)) print *,404
end
call s1
print *,'pass'
end

 
