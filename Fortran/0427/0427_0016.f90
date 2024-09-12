module m0
type x 
  integer::x1=1,y,x2(2)=(/2,3/)
end type
end module

module m1
use m0
contains
  subroutine s1
  type y 
    integer::x1=11,y,x2(2)=(/12,13/)
  end type
  call s1s
  call s1t
  call s1w
  call s1u
  contains
    subroutine s1s
    type(x)::v,z1,z2
    if (v%x1/=1) print *,101
    if (any(v%x2/=(/2,3/))) print *,102
    if (z1%x1/=1) print *,101
    if (any(z1%x2/=(/2,3/))) print *,102
    if (z2%x1/=1) print *,101
    if (any(z2%x2/=(/2,3/))) print *,102
    end subroutine
    subroutine s1t
    type(y)::v,z1,z2
    if (v%x1/=11) print *,101
    if (any(v%x2/=(/12,13/))) print *,102
    if (z1%x1/=11) print *,101
    if (any(z1%x2/=(/12,13/))) print *,102
    if (z2%x1/=11) print *,101
    if (any(z2%x2/=(/12,13/))) print *,102
    end subroutine
    subroutine s1w
    type(y)::v,z1,z2
!$omp parallel private(v,z1,z2)
    if (v%x1/=11) print *,201
    if (any(v%x2/=(/12,13/))) print *,202
    if (z1%x1/=11) print *,101
    if (any(z1%x2/=(/12,13/))) print *,102
    if (z2%x1/=11) print *,101
    if (any(z2%x2/=(/12,13/))) print *,102
!$omp end parallel
     end subroutine
    subroutine s1u
    type(y),save::v,z1,z2
!$omp parallel private(v,z1,z2)
    if (v%x1/=11) print *,201
    if (any(v%x2/=(/12,13/))) print *,202
    if (z1%x1/=11) print *,101
    if (any(z1%x2/=(/12,13/))) print *,102
    if (z2%x1/=11) print *,101
    if (any(z2%x2/=(/12,13/))) print *,102
!$omp end parallel
     end subroutine
  end subroutine
  subroutine s2
    type(x),save::v,z1,z2
!$omp parallel private(v,z1,z2)
    if (v%x1/=1) print *,201
    if (any(v%x2/=(/2,3/))) print *,202
    if (z1%x1/=1) print *,101
    if (any(z1%x2/=(/2,3/))) print *,102
    if (z2%x1/=1) print *,101
    if (any(z2%x2/=(/2,3/))) print *,102
!$omp end parallel
  end subroutine
  subroutine s3
    type(x)::v,z1,z2
!$omp parallel private(v,z1,z2)
    if (v%x1/=1) print *,201
    if (any(v%x2/=(/2,3/))) print *,202
    if (z1%x1/=1) print *,101
    if (any(z1%x2/=(/2,3/))) print *,102
    if (z2%x1/=1) print *,101
    if (any(z2%x2/=(/2,3/))) print *,102
!$omp end parallel
  end subroutine
end
use m1
call s1
call s2
call s3
print *,'pass'
end
