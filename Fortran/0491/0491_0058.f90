subroutine s1
 integer,allocatable:: x(:,:,:)

allocate( x(2:3,1:4, 0:5) )
!$omp parallel private(x)
x(:,:,:) =1
if (any(x/=1)) print *,101 
if (any(lbound(x)/=[2,1,0])) print *,102
if (any(ubound(x)/=[3,4,5])) print *,103
n=1
do k3=0,-1+size(x,3)
do k2=1,0+size(x,2)
do k1=2,1+size(x,1)
   x(k1,k2,k3) = n
   n=n+1
end do
end do
end do
!$omp end parallel
end
call s1
print *,'pass'
end
