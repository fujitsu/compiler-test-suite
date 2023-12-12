subroutine s2()
nn=0
!$omp parallel private(nn)
nn=3
block
 character(nn) ::  a(nn,nn)
 a='123'
 if (a(3,3)/='123') print *,102,a(3,3),len(a(3,3))
 if (size(a)/=9) print *,142
 if (len(a)/=3) print *,141
end block
!$omp end parallel
end subroutine
call omp_set_num_threads(1)
call s2()
print *,'pass'
end
