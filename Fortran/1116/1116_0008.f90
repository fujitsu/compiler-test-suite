call s1
call s2
call s3
print *,'pass'
contains
subroutine s1
type t
integer(1)::a(2)
end type
class(t),pointer::tt
!$omp parallel
do k=1,2
!$omp  task depend(out:tt%a(k))
!$omp  end task

!$omp  task depend(inout:tt%a(k))
!$omp  end task

!$omp  task depend(in:tt%a(k))
!$omp  end task

enddo 
!$omp end parallel
end subroutine s1
subroutine s2
type t
real(16)::a(2)
end type
class(t),pointer::tt
!$omp parallel
do k=1,2
!$omp  task depend(out:tt%a(k))
!$omp  end task

!$omp  task depend(inout:tt%a(k))
!$omp  end task

!$omp  task depend(in:tt%a(k))
!$omp  end task

enddo 
!$omp end parallel
end subroutine s2
subroutine s3
type t
complex(16)::a(2)
end type
class(t),pointer::tt
!$omp parallel
do k=1,2
!$omp  task depend(out:tt%a(k))
!$omp  end task

!$omp  task depend(inout:tt%a(k))
!$omp  end task

!$omp  task depend(in:tt%a(k))
!$omp  end task

enddo 
!$omp end parallel
end subroutine s3
end
