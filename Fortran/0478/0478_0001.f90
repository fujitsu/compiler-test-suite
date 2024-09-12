subroutine s1(k,n)
integer::k(n)
!$omp task private(k)
k=1
!$omp end task
end
subroutine s2(k,n)
integer::k(n)
!$omp task firstprivate(k)
k=1
!$omp end task
end
subroutine s3(k,n)
integer::k(n)
!$omp parallel private(k)
k=1
!$omp end parallel
end
subroutine s4(k,n)
integer::k(n)
!$omp parallel firstprivate(k)
k=1
!$omp end parallel
end
integer::k(3)
call s1(k,3)
call s2(k,3)
call s3(k,3)
call s4(k,3)
print *,'pass'
end
