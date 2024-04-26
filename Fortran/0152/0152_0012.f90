call s1
call s2
call s3
call s4
print *,'pass'
end
subroutine s1
integer(1)::i,j
j=2
!$omp atomic write
i=-j
!$omp atomic write
i=-(j)
!$omp atomic write
i=-(-j)
!$omp end atomic
if(i/=2) print *,'err'
end
subroutine s2
integer(2)::i,j
j=2
!$omp atomic write
i=-j
!$omp atomic write
i=-(j)
!$omp atomic write
i=-(-j)
!$omp end atomic
if(i/=2) print *,'err'
end
subroutine s3
integer(4)::i,j
j=2
!$omp atomic write
i=-j
!$omp atomic write
i=-(j)
!$omp atomic write
i=-(-j)
!$omp end atomic
if(i/=2) print *,'err'
end
subroutine s4
integer(8)::i,j
j=2
!$omp atomic write
i=-j
!$omp atomic write
i=-(j)
!$omp atomic write
i=-(-j)
!$omp end atomic
if(i/=2) print *,'err'
end
