subroutine s1(n1,n2,nn,k)
integer:: nn(n1:n2)
!$omp parallel do reduction (max: k )
do n=n1,n2
  k=k+2
  nn(n)=k
end do
!$omp end parallel do
if (nn(n1)/=-2147483646) print *,201,nn(n1)
if (k/=0) print *,202,k
end

parameter(n1=1,n2=10)
integer:: nn(n1:n2)
k=0
call s1(n1,n2,nn,k)
print *,'pass'
end
