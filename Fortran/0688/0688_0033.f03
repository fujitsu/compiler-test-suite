call s1
call s2
call s3
call s4
print *,'pass'
end
subroutine s1
logical(1),allocatable::a(:)
allocate(a(1))
a=.true.
call sub1(a)
contains
subroutine sub1(a)
logical(1),allocatable,intent(in)::a(:)
!$omp parallel if(a(1))
!$omp task if(a(1)) final(a(1))
!$omp end task
!$omp end parallel
end subroutine 
end
subroutine s2
logical(2),allocatable::a(:)
allocate(a(1))
a=.true.
call sub2(a)
contains
subroutine sub2(a)
logical(2),allocatable,intent(in)::a(:)
!$omp parallel if(a(1))
!$omp task if(a(1)) final(a(1))
!$omp end task
!$omp end parallel
end subroutine 
end
subroutine s3
logical(4),allocatable::a(:)
allocate(a(1))
a=.true.
call sub3(a)
contains
subroutine sub3(a)
logical(4),allocatable,intent(in)::a(:)
!$omp parallel if(a(1))
!$omp task if(a(1)) final(a(1))
!$omp end task
!$omp end parallel
end subroutine 
end
subroutine s4
logical(8),allocatable::a(:)
allocate(a(1))
a=.true.
call sub4(a)
contains
subroutine sub4(a)
logical(8),allocatable,intent(in)::a(:)
!$omp parallel if(a(1))
!$omp task if(a(1)) final(a(1))
!$omp end task
!$omp end parallel
end subroutine 
end
