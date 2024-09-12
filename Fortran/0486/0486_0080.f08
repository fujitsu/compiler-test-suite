module m1
 type x
   integer,allocatable:: x1
   integer,allocatable:: x2(:)
 end type
 type (x):: v1(3),v2(3)
integer::k1=1,k2=2,k3=3
contains
subroutine sub( c1,c2)
 type (x):: c1(*),c2(*)
if (.not.allocated(c1(1)%x1)) print *,1 
if (.not.allocated(c1(2)%x1)) print *,2 
c2(1)%x1=c1(1)%x1+10
c2(2)%x1=c1(2)%x1+10
c2(1)%x2=c1(1)%x2+10
c2(2)%x2=c1(2)%x2+10
end subroutine
end

use m1
allocate(v1(1)%x1 ,source=1)
allocate(v1(3)%x1 ,source=1)
allocate(v1(1)%x2(3) ,source=[2,3,4])
allocate(v1(3)%x2(3) ,source=[2,3,4])
allocate(v2(1)%x1 )
allocate(v2(3)%x1 )
allocate(v2(1)%x2(3) )
allocate(v2(3)%x2(3) )
if (v1(1)%x1 /=1) print *,101
if (v1(3)%x1 /=1) print *,102
if (any(v1(1)%x2 /=[2,3,4])) print *,201
if (any(v1(3)%x2 /=[2,3,4])) print *,203
 call sub( (v1(k1:k3:k2)),v2(k1:k3:k2)  ) 
if (v1(1)%x1 /=1) print *,111
if (v1(3)%x1 /=1) print *,112
if (any(v1(1)%x2 /= 0+[2,3,4])) print *,211
if (any(v1(3)%x2 /= 0+[2,3,4])) print *,213
if (v2(1)%x1 /=11) print *,1111
if (v2(3)%x1 /=11) print *,1112
if (any(v2(1)%x2 /= 10+[2,3,4])) print *,1211
if (any(v2(3)%x2 /= 10+[2,3,4])) print *,1213
print *,'pass'
end
