integer :: arr(10)
call omp_set_num_threads(1)
call sub(arr)
contains
subroutine sub(dmy)
integer,contiguous:: dmy(:)
!$omp parallel private(dmy)
print*,is_contiguous(dmy)
!$omp end parallel

end subroutine
end
