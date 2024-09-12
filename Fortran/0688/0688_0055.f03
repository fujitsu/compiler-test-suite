call s1
call s2
print *,'pass'
end
subroutine s1
type :: str
integer :: i
end type
type(str),pointer :: ss1,ss2
allocate(ss1)
!$omp task firstprivate(ss1)
ss1 = str(1)
!$omp end task
!$omp sections lastprivate(ss2)
!$omp end sections
end
subroutine s2
type :: str
character(1),allocatable :: i(:)
end type
type(str),pointer :: sss
!$omp parallel do lastprivate(sss)
do j=1,1
allocate(sss)
sss = str(["abcde"(1:1)])
end do 
!$omp end parallel do 

end
