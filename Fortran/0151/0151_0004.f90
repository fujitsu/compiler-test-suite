subroutine s2(k)
nn=0
!$omp parallel private(nn)
nn=3
block
 integer a(nn)
 a=1
 if (a(3)/=1) print *,102
 if (size(a)/=3) print *,142
end block
!$omp end parallel
end subroutine
call omp_set_num_threads(1)
call s2(3)
print *,'pass'
end
