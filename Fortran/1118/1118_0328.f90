call aaaaa
print *,'pass'
end
subroutine aaaaa
integer i(3)
i=2
j=3
call sa(i,j)
end
subroutine sa(i,j)
integer i(j)
!$omp task private(i)
!$omp parallel
i=100
if(any(i/=100)) print *,'err'
!$omp end parallel
!$omp endtask
end
