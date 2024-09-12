subroutine s4
character(len=:), allocatable::v
allocate(character(len=5)::v)
v = "AAAAA"
!$omp parallel
!$omp sections lastprivate(v)
!$omp section
deallocate(v)
allocate(character(len=4)::v)
v = "1111"
!$omp end sections
!$omp end parallel
if (.not. allocated(v)) print *,101
if (v /= "1111")  print *,102
if (len(v) /= 4)  print *,103
end subroutine s4

call s4
print *,'PASS'
end
