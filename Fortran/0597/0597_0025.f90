subroutine s4
character(kind=4,len=:), allocatable::v(:)
allocate(character(kind=4,len=5)::v(2))
v(1) = 4_"AAAAA"
v(2) = 4_"BBBBB"
!$omp parallel
!$omp sections lastprivate(v)
!$omp section
deallocate(v)
allocate(character(kind=4,len=4)::v(3))
v(1) = 4_"1111"
v(2) = 4_"2222"
v(3) = 4_"3333"
!$omp end sections
!$omp end parallel
if (.not. allocated(v)) print *,101
if (v(1) /= 4_"1111")  print *,102, v(1)
if (v(2) /= 4_"2222")  print *,103, v(2)
if (v(3) /= 4_"3333")  print *,104, v(3)
if (size(v) /= 3)  print *,105, size(v)
if (len(v(1)) /= 4)  print *,106, len(v(1))
end subroutine s4

call s4
print *,'PASS'
end
