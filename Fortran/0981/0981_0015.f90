module mm
integer i,j
contains
subroutine sub(a)
integer,pointer:: a(:,:)
a=reshape((/10,20/),(/1,2/))
!$OMP PARALLEL default(firstprivate) firstprivate(i,j) private(a)
allocate(a(i+10:12,j+10:14))
a=reshape((/11,21/),(/1,2/))
if(a(12,13)/=11)write(6,*) "NG"
if(a(12,14)/=21)write(6,*) "NG"
deallocate(a)
if (associated(a))write(6,*) "NG"
!$OMP END PARALLEL
if(a(2,3)/=10)write(6,*) "NG"
if(a(2,4)/=20)write(6,*) "NG"
call subx
if (associated(a))write(6,*) "NG"
call suby
contains
subroutine subx
!$OMP PARALLEL default(firstprivate) shared(a)
!$OMP SINGLE
if(a(2,3)/=10)write(6,*) "NG"
if(a(2,4)/=20)write(6,*) "NG"
deallocate(a)
!$OMP END SINGLE
!$OMP END PARALLEL
end subroutine
subroutine suby
!$OMP PARALLEL default(firstprivate) firstprivate(i,j) private(a)
allocate(a(i+10:12,j+10:14))
a=reshape((/11,21/),(/1,2/))
if(a(12,13)/=11)write(6,*) "NG"
if(a(12,14)/=21)write(6,*) "NG"
if (.not.associated(a))write(6,*) "NG"
deallocate(a)
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
