module mm
integer i,j
contains
subroutine sub(a)
integer,optional,pointer:: a(:,:)
a=reshape((/10,20/),(/1,2/))
!$OMP PARALLEL default(firstprivate)
!$OMP SINGLE
if(a(2,3)/=10)print *,'fail'
if(a(2,4)/=20)print *,'fail'
deallocate(a)
if (associated(a))print *,'fail'
!$OMP END SINGLE
!$OMP END PARALLEL
allocate(a(i+10:12,j+10:14))
a=reshape((/11,21/),(/1,2/))
if(a(12,13)/=11)print *,'fail'
if(a(12,14)/=21)print *,'fail'
call subx
call suby
contains
subroutine subx
!$OMP PARALLEL default(firstprivate)
!$OMP SINGLE
if(a(12,13)/=11)print *,'fail'
if(a(12,14)/=21)print *,'fail'
deallocate(a)
!$OMP END SINGLE
!$OMP END PARALLEL
end subroutine
subroutine suby
allocate(a(i+10:12,j+10:14))
!$OMP PARALLEL default(firstprivate)
!$OMP SINGLE
a=reshape((/11,21/),(/1,2/))
if(a(12,13)/=11)print *,'fail'
if(a(12,14)/=21)print *,'fail'
if (.not.associated(a))print *,'fail'
deallocate(a)
!$OMP END SINGLE
!$OMP END PARALLEL
end subroutine
end subroutine
end  
use mm
integer,pointer:: a(:,:)
CALL OMP_SET_NUM_THREADS(1)
i=2;j=3
do k=1,3
allocate(a(i:2,j:4))
call sub(a)
end do
print *,'pass'
end
