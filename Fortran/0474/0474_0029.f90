call s2
print *,'pass'
contains
subroutine s2
integer, allocatable, dimension (:) :: a
allocate (a(2))
!$omp parallel do lastprivate (a)
do i=1,2
a(i) = i
enddo
!$omp endparalleldo
if(a(2)/=2) print *, 'err2'
end subroutine
end



