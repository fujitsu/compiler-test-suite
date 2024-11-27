module mm
contains
subroutine sub(i,k)
integer,optional:: i,k
if (.not.present(k)) write(6,*) "NG"
if (present(i)) then
 if (i/=10)write(6,*) "NG"
 if (k/=1)write(6,*) "NG"
else
 if (k/=0)write(6,*) "NG"
endif
!$OMP PARALLEL default(firstprivate) shared(i) 
if (present(i)) then
 if (i/=10)write(6,*) "NG"
 if (k/=1)write(6,*) "NG"
else
 if (k/=0)write(6,*) "NG"
endif
!$OMP END PARALLEL
call subxx
contains
subroutine subxx
if (.not.present(k)) write(6,*) "NG"
if (present(i)) then
 if (i/=10)write(6,*) "NG"
 if (k/=1)write(6,*) "NG"
else
 if (k/=0)write(6,*) "NG"
endif
!$OMP PARALLEL default(firstprivate) shared(k,i)
if (.not.present(k)) write(6,*) "NG"
if (present(i)) then
 if (i/=10)write(6,*) "NG"
 if (k/=1)write(6,*) "NG"
else
 if (k/=0)write(6,*) "NG"
endif
!$OMP END PARALLEL
end subroutine
end subroutine
end  
use mm
do k=1,3
call sub(10,1)
call sub(k=0)
end do
print *,'pass'
end
