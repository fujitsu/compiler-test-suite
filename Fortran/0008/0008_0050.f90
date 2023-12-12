module m1
parameter( n1=3,n2=3,n3=3,n4=3 )
integer:: p(n1,n2,n3,n4)

contains
subroutine s1(i,nn2,nn4)
integer:: i(n1,n2,n3,n4)
i= p
forall (k2=1:nn2-1,k4=1:nn4-1) 
where( mod(i(:,k2,:,k4),2) /=0 ) &
 i(:,k2+1,:,k4+1) = i(:,k2,:,k4) + 1.0 / real(k2+k4 -1)
end forall
end subroutine

subroutine s2(i,nn2,nn4)
integer:: i(n1,n2,n3,n4)
integer,allocatable:: temp(:,:,:,:)
i= p
allocate(temp(n1,n2,n3,n4))
do k4=1,nn4-1
do k2=1,nn2-1
where( mod(i(:,k2,:,k4),2) /=0 ) &
 temp(:,k2,:,k4) = i(:,k2,:,k4) +1.0 / real(k2+k4 -1)
end do
end do
do k4=1,nn4-1
do k2=1,nn2-1
where( mod(p(:,k2,:,k4),2) /=0 ) &
 i(:,k2+1,:,k4+1) = temp(:,k2,:,k4)
end do
end do
end subroutine
end

use m1
integer:: i1(n1,n2,n3,n4),i2(n1,n2,n3,n4)
p= reshape([(k,k=1,(n1)*(n2)*(n3)*(n4))],[n1,n2,n3,n4])
call s1(i1,n2,n4)
call s2(i2,n2,n4)
if (any(i1/=i2)) print *,101
do k4=1,n4
do k3=1,n3
do k2=1,n2
do k1=1,n1
if (i1(k1,k2,k3,k4)/=i2(k1,k2,k3,k4)) then
   print *,k1,k2,k3,k4
   print *,i1(k1,k2,k3,k4)
   print *,i2(k1,k2,k3,k4)
endif
end do
end do
end do
end do
print *,'OK'
end