subroutine s2(k)
nn=0
!$omp parallel private(nn)
nn=kk
block
integer aa(nn)
end block
!$omp end parallel
end subroutine
print *,'pass'
end
