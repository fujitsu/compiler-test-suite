call s1
call s2
call s3
call s4
print *,'pass'
end
subroutine s1
integer(1)::i(2),j(2)
j=2
!$omp atomic write
i(1)=-j(1)
!$omp atomic write
i(2)=-(j(2))
!$omp atomic write
i(1)=-(-j(1))
!$omp end atomic
if(any(i/=[2,-2])) print *,'err'
end
subroutine s2
integer(2)::i(2),j(2)
j=2
!$omp atomic write
i(1)=-j(1)
!$omp atomic write
i(2)=-(j(2))
!$omp atomic write
i(1)=-(-j(1))
!$omp end atomic
if(any(i/=[2,-2])) print *,'err'
end
subroutine s3
integer(4)::i(2),j(2)
j=2
!$omp atomic write
i(1)=-j(1)
!$omp atomic write
i(2)=-(j(2))
!$omp atomic write
i(1)=-(-j(1))
!$omp end atomic
if(any(i/=[2,-2])) print *,'err'
end
subroutine s4
integer(8)::i(2),j(2)
j=2
!$omp atomic write
i(1)=-j(1)
!$omp atomic write
i(2)=-(j(2))
!$omp atomic write
i(1)=-(-j(1))
!$omp end atomic
if(any(i/=[2,-2])) print *,'err'
end
