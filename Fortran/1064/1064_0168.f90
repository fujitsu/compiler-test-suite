module m1
 type x
   integer,allocatable:: x1
   integer,allocatable:: x2(:)
 end type
 type (x):: v1(3)
integer::k1=1,k2=2,k3=3
contains
function   kk( c1)
complex kk
 type (x),value:: c1(k2)
if (.not.allocated(c1(1)%x1)) print *,1 
if (.not.allocated(c1(2)%x1)) print *,2 
c1(1)%x1=c1(1)%x1+10
c1(2)%x1=c1(2)%x1+10
c1(1)%x2=c1(1)%x2+10
c1(2)%x2=c1(2)%x2+10
kk=(1,1)
end function
end

use m1
allocate(v1(1)%x1 ,source=1)
allocate(v1(3)%x1 ,source=1)
allocate(v1(1)%x2(3) ,source=[2,3,4])
allocate(v1(3)%x2(3) ,source=[2,3,4])
if (v1(1)%x1 /=1) print *,101
if (v1(3)%x1 /=1) print *,102
if (any(v1(1)%x2 /=[2,3,4])) print *,201
if (any(v1(3)%x2 /=[2,3,4])) print *,203
if( abs(kk( v1(k1:k3:k2)  ) +&
   kk( v1(k1:k3:k2)  )  + &
   kk( v1(k1:k3:k2)  )  + &
   kk( v1(k1:k3:k2)  ) -(4,4) ) > 0.00001 ) print *,301
if (v1(1)%x1 /=1) print *,111
if (v1(3)%x1 /=1) print *,112
if (any(v1(1)%x2 /= 0+[2,3,4])) print *,211
if (any(v1(3)%x2 /= 0+[2,3,4])) print *,213
print *,'pass'
end
