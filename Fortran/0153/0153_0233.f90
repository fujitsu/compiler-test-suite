subroutine sub(dmy)
integer :: dmy
dmy=1
!$omp parallel default(private)
dmy=2
!$omp parallel shared(dmy)
  if(dmy/=2) print*,101
!$omp end parallel
  if(dmy/=2) print*,102
!$omp end parallel
  if(dmy/=1) print*,103
End
integer :: dmy
call       sub(dmy)
if (dmy/=1) print *,104
print *,'pass'
end
