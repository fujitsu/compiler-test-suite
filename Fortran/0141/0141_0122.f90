module m1
  type x
    integer:: x0
  end type
end
module m2
  use m1
  use omp_lib
  private
  public:: x,sub1,chk
  type,extends(x):: y
    private
    integer:: x1
    integer,public:: x2
  end type
type(y),private:: v1
type(y),public:: v2
!$omp threadprivate (v1)
!$omp threadprivate (v2)
contains
subroutine sub1
!$OMP PARALLEL
v1%x0=omp_get_thread_num()+1
v1%x1=omp_get_thread_num()+2
if(v1%x0/=omp_get_thread_num()+1) print *,101
if(v1%x1/=omp_get_thread_num()+2) print *,102
!$OMP END PARALLEL
end subroutine
subroutine chk
!$OMP PARALLEL
if(v1%x0/=omp_get_thread_num()+1) print *,301
if(v1%x1/=omp_get_thread_num()+2) print *,302
if (v2%x2/=omp_get_thread_num()+3) print *,303
!$OMP END PARALLEL
end subroutine
end
use m2
  use omp_lib
implicit none
!$OMP PARALLEL
v2%x2=omp_get_thread_num()+3
if (v2%x2/=omp_get_thread_num()+3) print *,102
!$OMP END PARALLEL
call sub1
call chk
print *,'pass'
end

