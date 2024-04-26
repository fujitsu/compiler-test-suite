module m1
contains
subroutine sub(dmy,k)
integer,optional :: dmy
!$omp parallel shared(dmy)
 if (k==1) then
  if(.not.present(dmy)) print*,101
 else
  if(present(dmy)) print*,102
 endif
!$omp end parallel
end subroutine
End
use m1
integer d
call sub(d,1)
call sub( k=0)
print *,'pass'
end
