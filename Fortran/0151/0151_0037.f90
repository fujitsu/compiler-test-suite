subroutine s1
!$omp parallel
n2=2
n3=3
block
integer a01(n2,n3),a02(n2,n3)
end block
!$omp end parallel
end
call s1
print *,'pass'
end
