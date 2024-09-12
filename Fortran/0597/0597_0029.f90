subroutine s1
   type x
     integer::x1(5)
     character(len=5)::x2(6)
   end type

   type(x),allocatable,save::v(:)
!$omp threadprivate (v)

!$omp parallel
    allocate(v(2))
    v(1)%x1 = 1
    v(2)%x2 = "HELLO"
!$omp end parallel

!$omp parallel copyin(v)
    if (ubound(v(1)%x1,1)/=5) print *,201
    if (ubound(v(2)%x2,1)/=6) print *,202
    if (any(v(1)%x1(:2)/=1)) print *,203
    if (any(v(2)%x2(:3)/="HELLO")) print *,204
!$omp critical
    deallocate(v)
    allocate(v(3))
    v(2)%x1 = 2
    v(3)%x2 = "WORLD"
!$omp end critical
!$omp end parallel
    if (ubound(v(2)%x1,1)/=5) print *,101
    if (ubound(v(3)%x2,1)/=6) print *,102
    if (any(v(2)%x1(3:5)/=2)) print *,103
    if (any(v(3)%x2(3:5)/="WORLD")) print *,104
    if (size(v) /= 3) print*,105
end

call s1
print *,'PASS'
end

