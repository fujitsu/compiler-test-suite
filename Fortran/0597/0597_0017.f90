subroutine s4
character(len=:), allocatable::v(:)
allocate(character(len=5)::v(2))
v(1) = "AAAAA"
v(2) = "BBBBB"
!$omp parallel
!$omp sections lastprivate(v)
!$omp section
deallocate(v)
allocate(character(len=4)::v(3))
v(1) = "1111"
v(2) = "2222"
v(3) = "3333"
!$omp end sections
!$omp end parallel
if (.not. allocated(v)) print *,101
if (v(1) /= "1111")  print *,102, v(1)
if (v(2) /= "2222")  print *,103, v(2)
if (v(3) /= "3333")  print *,104, v(3)
if (size(v) /= 3)  print *,105, size(v)
if (len(v(1)) /= 4)  print *,106, len(v(1))
end subroutine s4

call s4
print *,'PASS'
end
