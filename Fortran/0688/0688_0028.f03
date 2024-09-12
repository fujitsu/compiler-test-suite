call s1
call s2
call s3
call s4
print *,'pass'
end
subroutine s1
logical,allocatable::a
allocate(a)
a=.true.
call sub1(a)
contains
subroutine sub1(a)
logical,allocatable::a
!$omp parallel if(a)
!$omp end parallel
end subroutine 
end
subroutine s2
logical,allocatable::a
allocate(a)
a=.true.
call sub2(a)
contains
subroutine sub2(a)
logical,allocatable::a
!$omp task if(a)
!$omp end task
end subroutine 
end
subroutine s3
logical,allocatable::a
allocate(a)
a=.true.
call sub3(a)
contains
subroutine sub3(a)
logical,allocatable::a
!$omp task final(a)
!$omp end task
end subroutine 
end
subroutine s4
integer,allocatable::a
allocate(a)
a=4
call sub4(a)
contains
subroutine sub4(a)
integer,allocatable::a
!$omp parallel num_threads(a)
!$omp end parallel
end subroutine 
end
