subroutine s2()
kk=1
nn=0
!$omp parallel private(nn)
nn=kk
block
 integer a(nn)
 a=1
 if (any(a/=1)) print *,102
end block
!$omp end parallel
end subroutine
subroutine s0
call s2()
end
call omp_set_num_threads(1)
call s0
print *,'pass'
end
