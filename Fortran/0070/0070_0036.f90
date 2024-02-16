real a(10)
a=0
!$omp parallel do private(a)
do k=1,10
a(k)=1
end do
if (any(a/=0)) print *,101
print *,'pass'
end

