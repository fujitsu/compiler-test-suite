subroutine s4
character(len=:), allocatable::v(:,:)
allocate(character(len=4)::v(4,5))
v(1,:) = "AAAA"
v(2,:) = "BBBB"
!$omp parallel
!$omp sections lastprivate(v)
!$omp section
deallocate(v)
allocate(character(len=4)::v(4,6))
v(1,:) = "1111"
v(2,:) = "2222"
v(3,:) = "3333"
v(4,:) = "4444"
!$omp end sections
!$omp end parallel
if (.not. allocated(v)) print *,101
if (any(v(1,:) /= "1111"))  print *,102
if (any(v(2,:) /= "2222"))  print *,103
if (any(v(3,:) /= "3333"))  print *,104
if (any(v(4,:) /= "4444"))  print *,105
if (size(v) /= 24)  print *,106, size(v)
if (len(v(1,:)) /= 4)  print *,107 
end subroutine s4

call s4
print *,'PASS'
end
