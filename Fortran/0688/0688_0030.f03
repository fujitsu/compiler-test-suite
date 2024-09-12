call s1
call s2
call s3
call s4
print *,'pass'
end
subroutine s1
integer(1),allocatable::a
allocate(a)
a=1
call sub1(a)
contains
subroutine sub1(a)
integer(1),allocatable::a
!$omp parallel num_threads(a)
!$omp end parallel
end subroutine 
end
subroutine s2
integer(2),allocatable::a
allocate(a)
a=1
call sub2(a)
contains
subroutine sub2(a)
integer(2),allocatable::a
!$omp parallel num_threads(a)
!$omp end parallel
end subroutine 
end
subroutine s3
integer(4),allocatable::a
allocate(a)
a=1
call sub3(a)
contains
subroutine sub3(a)
integer(4),allocatable::a
!$omp parallel num_threads(a)
!$omp end parallel
end subroutine 
end
subroutine s4
integer(8),allocatable::a
allocate(a)
a=1
call sub4(a)
contains
subroutine sub4(a)
integer(8),allocatable::a
!$omp parallel num_threads(a)
!$omp end parallel
end subroutine 
end
