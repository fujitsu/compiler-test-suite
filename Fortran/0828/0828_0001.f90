call s1
call s2
print *,'pass'
contains
subroutine s1
complex,dimension(:),allocatable::a1,a2
integer::n=2
allocate(a1(n))
allocate(a2(n))
a1=(10,10)
a2=(10,10)
!$omp task
!$omp parallel reduction(*:a1) reduction(*:a2)
a1 = a1 * 2
a2 = a2 * 2
!$omp end parallel
if(any(a1/=a2)) print *,'err1'
!$omp end task
!$omp task in_reduction(*:a1)
!$omp task in_reduction(*:a2)
a1 = a1 * 2
a2 = a2 * 2
!$omp end task
!$omp end task
if(any(a1/=[(10,10),(10,10)])) print *,'err2'
if(any(a2/=[(20,20),(20,20)])) print *,'err3'
end subroutine s1
subroutine s2
complex,dimension(:),allocatable::a1,a2
integer::n=2
allocate(a1(n))
allocate(a2(n))
a1=(10,10)
a2=(10,10)
!$omp taskgroup
!$omp taskloop reduction(*:a1) in_reduction(*:a2)
do k=1,n
a1 = a1 * 2
a2 = a2 * 2
enddo
!$omp end taskloop
if(any(a1/=a2)) print *,'err1'
!$omp end taskgroup

!$omp taskgroup task_reduction(*:a1) task_reduction(*:a2)
!$omp taskloop reduction(*:a1) in_reduction(*:a2)
do k=1,n
!$omp taskgroup
a1 = a1 * 2
a2 = a2 * 2
!$omp end taskgroup
enddo
!$omp end taskloop
if(any(a1/=a2)) print *,'err1'
!$omp end taskgroup
end subroutine s2
end
