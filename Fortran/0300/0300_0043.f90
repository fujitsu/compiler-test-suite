integer,allocatable:: a(:)
allocate(a(2))
!$OMP PARALLEL
call subx
!$OMP END PARALLEL
contains

subroutine subx
print *,a(2)
end subroutine
end

