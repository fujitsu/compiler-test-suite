integer,allocatable,dimension(:)::i,j
allocate(i(2),j(2))
!$omp parallel default(none) private(i,j)
i = 10
j = 20
if(i(1)/=10) print *,'err1'
if(i(2)/=10) print *,'err2'
if(j(1)/=20) print *,'err3'
if(j(2)/=20) print *,'err4'
!$omp sections private(i)
i = 30
if(i(1)/=30) print *,'err5'
if(i(2)/=30) print *,'err6'
!$omp end sections
!$omp end parallel
print *,'pass'
end
