call omp_set_dynamic(.false.)
call omp_set_num_threads(1)
call s1
call s2
print *,'pass'
end
subroutine s1
integer(1),pointer::p1
integer(1),target::t1
t1=0
allocate(p1)
!$omp parallel do firstprivate(p1)
do i=1, 127
p1 = i
end do
!$omp end parallel do
if(p1/=127) print *,'err1'
!$omp parallel do lastprivate(p1)
do i=1, 127
p1=>t1 
p1 = -i
end do
!$omp end parallel do
if(p1/=-127) print *,'err2'
end subroutine 
subroutine s2
integer(2),pointer::p2
integer(2),target::t2
t2=0
allocate(p2)
!$omp parallel do firstprivate(p2)
do i=1, 32767
p2 = i
end do
!$omp end parallel do
if(p2/=32767) print *,'err3'
!$omp parallel do lastprivate(p2)
do i=1, 32767
p2=>t2 
p2 = -i
end do
!$omp end parallel do
if(p2/=-32767) print *,'err4',p2
end subroutine 

